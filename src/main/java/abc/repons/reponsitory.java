package abc.repons;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import abc.entity.nhanVienEntity;

public interface reponsitory extends CrudRepository<nhanVienEntity, Integer>{
@Query("select u from nhanVienEntity u where u.user=:tk and u.pass=:mk")
public nhanVienEntity login(@Param("tk") String user, @Param("mk") String pass);
}
