create table mvcboard1(
bno int not null primary key auto_increment,
bname varchar(200) not null,
bpass varchar(50) not null,
btitle varchar(1000) not null,
bcontent text not null,
bdate timestamp not null default current_timestamp,
bhit int not null default 0,
bip varchar(50) not null
);

select * from mvcboard1;

desc mvcboard1;

-- 004. CONTROLLER
--        -1) list.jsp 전체 리스트 출력
select * from mvcboard1 order by bno desc;

--        -2) write.jsp (글쓰기 폼)    write_action.jsp(글쓰기 처리)
insert into mvcboard1( bname, bpass, btitle, bcontent, bip) values('태순','1111','인사하기','안녕하세요!','198.164.0.1');

--        -3) detail.jsp 상세보기
--            select * from mvcboard1 where bno=?
--            update mvcboard1 set bhit=bhit+1  where bno=?

--        -4) edit.jsp (글수정 폼)     edit_action.jsp (글수정 처리)
--            update mvcboard1   set  btitle=? , bcontent=? where  bno=?  and bpass=?
--            
--        -5) delete.jsp (글삭제 폼)   delete_action.jsp (글삭제 처리)
--            delete from mvcboard1  where  bno=?  and bpass=?
-- R 전체파일/상세보기
-- U 수정 / 조회수 올리기
-- D 글삭제