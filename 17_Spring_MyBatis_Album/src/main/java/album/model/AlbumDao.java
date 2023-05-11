package album.model;

import java.util.List;
import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

//컴포넌트는 AlbumDao myAlbumDao = new AlbumDao();와 같다.
@Component("myAlbumDao")
public class AlbumDao {

	//mapper의 namespace와 동일하게 입력
	private String namespace="album.AlbumBean";
	
	//root-context에서 만들어둔 객체를 주입
	//자식이 하나밖에 없으면 퀄리파이어 필요x
	@Autowired
	SqlSessionTemplate sqlSqssionTemplate; //접속 정보
	
	public AlbumDao() {
		System.out.println("AlbumDao() 생성자");
	}//생성자
	
	public List<AlbumBean> getAlbumList(){
		
		List<AlbumBean> lists = new ArrayList<AlbumBean>();
		sqlSqssionTemplate.selectList(namespace+".GetAlbumList");
		System.out.println("lists.size() : "+lists.size());
		
		return lists;
	}//getAlbumList
	
	public int InsertAlbum(AlbumBean ab) {//mapper명과 동일
		//mapper의 namespace+파일명 경로
		int cnt = -1;
		//ab를 넘겨줌
		cnt = sqlSqssionTemplate.insert(namespace+".InsertAlbum",ab);
		return cnt;
	}
}