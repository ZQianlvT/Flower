package orion_pax.dao;

import orion_pax.entity.Discussion;



public interface DiscussionMapper extends BaseMapper<Discussion>{

    /**
     * 通过discussionId获取Discussion的详细信息包括回复列表和用户
     *
     * @param discussion 封装id的discussion
     * @return 查询到的封装详细信息的Discussion
     */
    Discussion getDiscussionDetail(Discussion discussion);

    /**
     * 通过discussion的id修改状态
     * @return 返回正整数大于0成功反之失败
     */
    int openDiscussion (Discussion discussion);
}