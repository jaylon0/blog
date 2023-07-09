package com.sangeng.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.sangeng.domain.entity.Link;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


/**
 * 友链(Link)表数据库访问层
 *
 * @author makejava
 * @since 2022-02-03 12:22:49
 */
@Mapper
@Repository
public interface LinkMapper extends BaseMapper<Link> {

}

