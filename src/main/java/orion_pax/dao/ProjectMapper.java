package orion_pax.dao;

import orion_pax.entity.Project;
import orion_pax.entity.User;

import javax.swing.border.Border;
import java.util.List;

public interface ProjectMapper extends BaseMapper<Project> {
    List<Project> getByTeamId (Project project);

    List<Project> selectAll(User currUser);

    Project getBaseByPK(Project project);

    int updateProject(Project project);


}