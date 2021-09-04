package by.zhenekns.dev.iba.repository;

import by.zhenekns.dev.iba.model.Message;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MessageRepository extends CrudRepository<Message, Long> {
    List<Message> findByTag(String tag);
}
