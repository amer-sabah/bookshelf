package jo.secondstep.bookshelf.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import jo.secondstep.bookshelf.entities.Permission;


public interface PermissionRepository extends CrudRepository<Permission, Integer> {
	@Query(value = "SELECT * FROM users , permissions "
		       + "WHERE users.user_id=permissions.user_id AND username like %?1%" ,nativeQuery = true)
    public List<Permission> findPermissionByUsername(String username);
}
