package orion_pax.service;

import orion_pax.entity.Discussion;
import orion_pax.entity.Reply;

import java.util.List;

public interface DiscussionService extends BaseService<Discussion>{
    /**
     * 通过discussionId获取Discussion的详细信息包括回复列表和用户
     *
     * @param discussion 封装id的discussion
     * @return 查询到的封装详细信息的Discussion
     */
    Discussion getDiscussionDetail(Discussion discussion);

    /**
     * 通过当前用户id插入Reply对象
     * @param reply 封装这些Reply对象
     * @return 返回正整数大于0成功反之失败
     */
    int insertReply (Reply reply);

    /**
     * 通过discussion的id修改状态
     * @return 返回正整数大于0成功反之失败
     */
    int openDiscussion (Discussion discussion);
}
