package pl.marcinkielbik.EmployeeManager.repository.implementation;

import pl.marcinkielbik.EmployeeManager.models.User;
import pl.marcinkielbik.EmployeeManager.repository.UserRepository;

import java.util.Collection;

public class UserRepositoryImpl implements UserRepository<User> {
    @Override
    public User create(User data) {
        return null;
    }

    @Override
    public Collection<User> list(int page, int pageSize) {
        return null;
    }

    @Override
    public User get(Long id) {
        return null;
    }

    @Override
    public User update(User data) {
        return null;
    }

    @Override
    public Boolean delete(Long id) {
        return null;
    }
}
