package orion_pax.service.impl;

import org.springframework.stereotype.Service;
import orion_pax.dao.DiscussionMapper;
import orion_pax.entity.Discussion;
import orion_pax.entity.Reply;
import orion_pax.service.DiscussionService;

import java.util.List;

@Service("discussionService")
public class DiscussionServiceImpl extends BaseServiceImpl<Discussion> implements DiscussionService {

    /**
     * 通过discussionId获取Discussion的详细信息包括回复列表和用户
     *
     * @param discussion 封装id的discussion
     * @return 查询到的封装详细信息的Discussion
     */
    @Override
    public Discussion getDiscussionDetail(Discussion discussion) {
        return discussionMapper.getDiscussionDetail(discussion);
    }

    /**
     * 通过当前用户id插入Reply对象
     *
     * @param reply 封装这些Reply对象
     * @return 返回正整数大于0成功反之失败
     */
    @Override
    public int insertReply(Reply reply) {
        return replyMapper.insertReply(reply);
    }

    /**
     * 通过discussion的id修改状态
     *
     * @return 返回正整数大于0成功反之失败
     */
    @Override
    public int openDiscussion(Discussion discussion) {
        return discussionMapper.openDiscussion(discussion);
    }
}
