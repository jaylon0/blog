package com.sangeng.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.sangeng.domain.entity.Comment;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


/**
 * 评论表(Comment)表数据库访问层
 *
 * @author makejava
 * @since 2022-02-08 23:49:33
 */
@Mapper
@Repository
public interface CommentMapper extends BaseMapper<Comment> {

}

