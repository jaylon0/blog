package com.sangeng.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.sangeng.domain.entity.Tag;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


/**
 * 标签(Tag)表数据库访问层
 *
 * @author makejava
 * @since 2022-07-19 22:33:35
 */
@Mapper
@Repository
public interface TagMapper extends BaseMapper<Tag> {

}

