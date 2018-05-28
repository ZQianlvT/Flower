package orion_pax.service;

import orion_pax.entity.Project;
import orion_pax.entity.User;

import java.util.List;

public interface ProjectService extends BaseService<Project> {
    /**
     * 通过用户id查询project项目对象
     * @param currUser 封装信息的User对象
     * @return 查询到的project
     */
    List<Project> listProject (User currUser);

    /**
     * 通过浏览器提供的项目信息创建一个具有固定模板的项目
     *
     * @param project 封装项目信息的对象
     * @return 正整数，大于零修改成功
     */
    int createProject(Project project);

    /**
     * 通过projectId获取Project的基本信息对象
     *
     * @param project 封装projectId的对象
     * @return 查询到的Project
     */
    Project getBaseByPK(Project project);
}
