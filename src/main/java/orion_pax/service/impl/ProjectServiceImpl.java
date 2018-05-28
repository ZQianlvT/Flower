package orion_pax.service.impl;

import org.springframework.stereotype.Service;
import orion_pax.entity.Board;
import orion_pax.entity.Project;
import orion_pax.entity.User;
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
}
