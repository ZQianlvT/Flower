package orion_pax.service;

import orion_pax.entity.Board;
import orion_pax.entity.Project;
import orion_pax.entity.Task;
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

    /**
     * 通过project的id修改项目状态
     * @param project 封装对象
     * @return 正整数，大于零修改成功
     */
    int updateProject(Project project);

    /**
     * 通过浏览器提供的信息创建一个看板
     * @param board 封装信息的对象
     * @return查询到的看板
     */
    int insertBoard(Board board);

    /**
     * 获取Board的index的最大值
     * @param board 封装信息
     * @return返回board
     */
    int getMaxIndex(Board board);

    /**
     * 修改看板名称
     * @param board 封装对象信息
     * @return 正整数成功
     */
    int deleteBoard(Board board);

    /**
     * 通过浏览器提供的任务名，任务截止时间任务指派人信息创建一个任务
     * @param task 封装对象
     * @return 正整数成功
     */
    int insertTask(Task task);

    /**
     * 通过id获取Board对象
     *
     * @param board 封装id的Board
     * @return 查询到的Board对象
     */
    Board getBoardByPK(Board board);

    /**
     * 通过taskId将其状态取反
     *
     * @param task 封装id的Task对象
     * @return 正整数，大于零修改成功
     */
    int updateTaskStatus(Task task);

    /**
     * 通过taskId获取task对象
     *
     * @param task 封装id的Task
     * @return 查询到的Task
     */
    Task getTaskById(Task task);
}
