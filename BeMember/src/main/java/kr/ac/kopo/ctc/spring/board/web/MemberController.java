package kr.ac.kopo.ctc.spring.board.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.kopo.ctc.spring.board.domain.Member;
import kr.ac.kopo.ctc.spring.board.repository.MemberRepository;

@Controller
public class MemberController {
	@Autowired
	private MemberRepository memberRepository;
	
	@RequestMapping(value = "/member/list") // read
	public String selectAll(Model model) { // get
		List<Member> items = memberRepository.findAll();
		
		model.addAttribute("items", items);
		
		return "member_list";
	}
	
	@RequestMapping(value = "/member/error")
	public String error(Model model) {
		
		
		return "error"; 
	}
	
	@RequestMapping(value = "/member/write", method= {RequestMethod.POST}) // write
	public String write(@RequestParam String id, @RequestParam String password, @RequestParam String name,
			@RequestParam String birth, @RequestParam String address, @RequestParam String phone, Model model) {
		Member member = new Member();
				
		member.setId(id);
		member.setPassword(password);
		member.setName(name);
		member.setBirth(birth);
		member.setAddress(address);
		member.setPhone(phone);
				
		memberRepository.save(member);
		
		return "redirect:/member/list";
	}
	
	@RequestMapping(value = "/member/view", method= {RequestMethod.GET}) // one id
	public String view(@RequestParam String key, Model model) {
		Member member = null;
		
		key = key.replace("\"", "");
		int cid = Integer.parseInt(key);
		
		member = memberRepository.findById(cid).get();
		
		model.addAttribute("member", member);
		
		return "member_view";
	}
	
	@RequestMapping(value = "/member", method= {RequestMethod.GET})
	public String create(Model model) {
		
			
		return "member_insert";
	}
	
	@RequestMapping(value = "/member/updateAll", method= {RequestMethod.GET})
	public String updateToAll(Model model) {
		
		return "member_updateAll";
	}
	
	@RequestMapping(value = "/member/all", method=RequestMethod.POST) // update all
	public String updateAll(Model model, @RequestParam String id, @RequestParam String password, @RequestParam String name,
			@RequestParam String birth, @RequestParam String address, @RequestParam String phone) {
		List<Member> items = memberRepository.findAll();
		
		Member member = null;
		int count = 0;
		String iid = "";
		String ppassword = "";
		String nname = "";
		String bbirth = "";
		String aaddress = "";
		String pphone = "";
		
		for (Member i : items) {
			member = i;
			count++;
			
			if (count == 1) {
				iid = id;
				ppassword = password;
				nname = name;
				bbirth = birth;
				aaddress = address;
				pphone = phone;
			}
			
			if (iid == "") {
				id = member.getId();
			}
			if (ppassword == "") {
				password = member.getPassword();
			}
			if (nname == "") {
				name = member.getName();
			}
			if (bbirth == "") {
				birth = member.getBirth();
			}
			if (aaddress == "") {
				address = member.getAddress();
			}
			if (pphone == "") {
				phone = member.getPhone();
			}	
			
			member.setId(id);
			member.setPassword(password);
			member.setName(name);
			member.setBirth(birth);
			member.setAddress(address);
			member.setPhone(phone);
			
			memberRepository.save(member);
		}
		
		return "redirect:/member/list";
	}
	
	@RequestMapping(value = "/member/{no}", method=RequestMethod.PUT) // update
	public String update(@PathVariable int no, @RequestParam String id, @RequestParam String password, @RequestParam String name,
			@RequestParam String birth, @RequestParam String address, @RequestParam String phone, Model model) {
		Member member = null;
		
		member = memberRepository.findById(no).get();
	 		
		member.setId(id);
		member.setPassword(password);
		member.setName(name);
		member.setBirth(birth);
		member.setAddress(address);
		member.setPhone(phone);
	 	
		memberRepository.save(member);
		
		return "redirect:/member/view?key="+no;
	}
	
	@RequestMapping(value = "/member/update", method= {RequestMethod.POST})
	public String update(@RequestParam String key, Model model) {
		Member member = null;
		
		key = key.replace("\"", "");
		int cid = Integer.parseInt(key);
		member = memberRepository.findById(cid).get();
		
		model.addAttribute("member", member);
		
		return "member_update";
	}
	
}
