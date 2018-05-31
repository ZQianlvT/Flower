package orion_pax.service.impl;

import org.springframework.stereotype.Service;
import orion_pax.entity.*;
import orion_pax.service.ProjectService;


import java.util.List;
import java.util.UUID;

@Service("projectService")

public class ProjectServiceImpl extends BaseServiceImpl<Project> implements ProjectService {

    /**
     * 通过用户id查询project项目对象
     *
     * @param currUser 封装信息的User对象
     * @return 查询到的project
     */
    @Override
    public List<Project> listProject(User currUser) {
        return projectMapper.selectAll(currUser);
    }

    @Override
    public int createProject(Project project) {
        int count = projectMapper.insert(project);
        String[] names = new String[]{"需求", "设计", "开发", "测试", "上线"};
        Board board = new Board();
        for (int i = 0; i < 5; ++i) {
            board.setId(UUID.randomUUID().toString().replace("-", ""));
            board.setIndex(i);
            board.setName(names[i]);
            board.setUnfinished(0);
            board.setpId(project.getId());
            boardMapper.insert(board);
        }
        return count;
    }

    /**
     * 通过projectId获取Project的基本信息对象
     *
     * @param project 封装projectId的对象
     * @return 查询到的Project
     */
    @Override
    public Project getBaseByPK(Project project) {
        return projectMapper.getBaseByPK(project);
    }

    /**
     * 通过project的id修改项目状态
     *
     * @param project 封装对象
     * @return 正整数，大于零修改成功
     */
    @Override
    public int updateProject(Project project) {
        return projectMapper.updateProject(project);
    }

    /**
     * 通过浏览器提供的信息创建一个看板
     *
     * @param board
     * @return查询到的看板
     */
    @Override
    public int insertBoard(Board board) {
        Project project = new Project();
        project.setId(board.getpId());
        project = projectMapper.getByPK(project);
        if(project.getBoardList().size()==0){
            board.setIndex(0);
        }else {
            board.setIndex(boardMapper.selectMaxIndex(board)+1);
        }
        return boardMapper.insert(board);
    }

    /**
     * 获取Board的index的最大值
     *
     * @param board@return返回board
     */
    @Override
    public int getMaxIndex(Board board) {
        return boardMapper.selectMaxIndex(board);
    }

    /**
     * 修改看板名称
     *
     * @param board 封装对象信息
     * @return 正整数成功
     */
    @Override
    public int deleteBoard(Board board) {
        return boardMapper.deleteByPk(board);
    }

    /**
     * 通过浏览器提供的任务名，任务截止时间任务指派人信息创建一个任务
     *
     * @param task 封装对象
     * @return 正整数成功
     */
    @Override
    public int insertTask(Task task) {
        return taskMapper.insert(task);
    }

    /**
     * 查询用户团队详情表中的成员数量
     *
     * @param userAndTeam 封装信息
     * @return 返回数量
     */
    @Override
    public int countsMembers(UserAndTeam userAndTeam) {
        return userAndTeamMapper.countsMembers(userAndTeam);
    }

    /**
     * 通过id获取Board对象
     *
     * @param board 封装id的Board
     * @return 查询到的Board对象
     */
    @Override
    public Board getBoardByPK(Board board) {
        return boardMapper.getByPK(board);
    }

    /**
     * 通过taskId将其状态取反
     *
     * @param task 封装id的Task对象
     * @return 正整数，大于零修改成功
     */
    @Override
    public int updateTaskStatus(Task task) {
        task = taskMapper.getByPK(task);
        task.setStatus(~task.getStatus());
        System.out.println("-----------OrionPax测试变量值----------task值=" + task + "," + "当前类=ProjectServiceImpl.updateTaskStatus()");
        return taskMapper.updateByPK(task);
    }

    /**
     * 通过taskId获取task对象
     *
     * @param task 封装id的Task
     * @return 查询到的Task
     */
    @Override
    public Task getTaskById(Task task) {
        return taskMapper.getByPK(task);
    }

}
