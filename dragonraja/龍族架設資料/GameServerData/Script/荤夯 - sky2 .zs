
@sys00	; 처음 서버 Setting하는 함수.

	MaxNPC( 50 )
	
	MapName( "sky2" )
	
end	


@sys01 
end
@sys02 
end
@sys03 
end
@sys04 
end
@sys05 
end
@sys06 
end
@sys07 
end
@sys08 
end
@sys09 
end




@Npc00000	
end
@Npc00001
end
@Npc00002	
end
@Npc00003	
end
@Npc00004	
end
@Npc00005	
end
@Npc00006	
end
@Npc00007	
end
@Npc00008   
end
@Npc00009	
end

@Npc00010	
end
@Npc00011	
end
@Npc00012	
end
@Npc00013	
end
@Npc00014	
end
@Npc00015	
end
@Npc00016	
end
@Npc00017	
end
@Npc00018   
end
@Npc00019	
end

@Npc00020	
end
@Npc00021	
end
@Npc00022	
end
@Npc00023	
end
@Npc00024	
end
@Npc00025	
end
@Npc00026	
end
@Npc00027	
end
@Npc00028   
end
@Npc00029	
end

@Npc00030	
end
@Npc00031	
end
@Npc00032	
end
@Npc00033	
end
@Npc00034	
end
@Npc00035	
end
@Npc00036	
end
@Npc00037	
end
@Npc00038   
end
@Npc00039	
end

@Npc00040	
end
@Npc00041	
end
@Npc00042	
end
@Npc00043	
end
@Npc00044	
end
@Npc00045	
end
@Npc00046	
end
@Npc00047	
end
@Npc00048   
end
@Npc00049	
end





@Event00000	;;사용하지 않음
end
@Event00001	;;sky1에서 sky2로 이동 포털
	MapMove("sky1",167,82)	;;20031024 좌표 수정 완료
	if( yes == 1 )
	{
	EventMsg("<노커의 탑>으로 이동합니다.")
	}
	else
	{
	EventMsg("맵 이동에 실패했습니다.")
	}
end
@Event00002
end
@Event00003
end
@Event00004		
end
@Event00005		
end
@Event00006		
end
@Event00007		
end
@Event00008		
end
@Event00009	;;보스 방 입장 포털
CheckItemMulti(10268,1)
	if(yes>=1)
	{
		BossTimerCheck(77,274,261,7,1800,300,1)
			if(yes==0)
				{
					EventMsg("현재 다른 유저가 전투 중입니다.")	
					LogForScript(36,"시커의 탑 보스 방 입구_보스 방이 시끄러워 대기중")
				}
			if(yes==1)
				{
					EventMsg("현재 다른 파티가 전투 중입니다.")	
					LogForScript(36,"시커의 탑 보스 방 입구_보스 방이 꽉 차서 대기중")
				}
			else ;;원 if(yes>0)
				{
					DeleteItemMulti(10268,1)
					QuestTeleport(1,300,230)
					EventMsg("이동합니다.")	
					ScriptTimer(yes,"sky2",212,39)	
					LogForScript(36,"시커의 탑 보스 방 입구_보스 방 입장")
				}
	}
	else
	{
		EventMsg("이 방에 입장하기 위해서는 '수용의 열쇠'가 필요합니다.")
	}
end

@Event00010		
end
@Event00011	;;퀘스트 1번방 입구
CheckItemMulti(10264,1)	
	if(yes>=1)
	{
		BossTimerCheck(73,71,82,7,1800,300,1)
			if(yes==0)
				{
					EventMsg("현재 다른 유저가 전투 중입니다.")	
					LogForScript(36,"시커의 탑 1번 방 입구_1번 방이 시끄러워 대기중")
				}
			if(yes==1)
				{
					EventMsg("현재 다른 파티가 전투 중입니다.")	
					LogForScript(36,"시커의 탑 1번 방 입구_1번 방이 꽉 차서 대기중")
				}
			else ;;원 if(yes>0)
				{
					DeleteItemMulti(10264,1)
					QuestTeleport(1,75,88)
					EventMsg("이동합니다.")	
					ScriptTimer(yes,"sky2",137,137)	
					LogForScript(36,"시커의 탑 1번 방 입구_1번 방 입장")
				}
	}
	else
	{
		EventMsg("이 방에 입장하기 위해서는 '부정의 열쇠'가 필요합니다.")
	}
end
@Event00012	;;퀘스트 1번방 출구
	QuestTeleport(1,137,137)
	if(yes == 1) 
	{
		EventMsg("방에서 나갑니다.")
		ScriptTimer(0,"0",0,0)
	}
	else 
	{
		EventMsg(" 이동에 실패했습니다. ")
	}
end
@Event00013	;;퀘스트 2번방 입구
CheckItemMulti(10265,1)	
	if(yes>=1)
	{
		BossTimerCheck(74,70,470,7,1800,300,1)
			if(yes==0)
				{
					EventMsg("현재 다른 유저가 전투 중입니다.")	
					LogForScript(36,"시커의 탑 2번 방 입구_2번 방이 시끄러워 대기중")
				}
			if(yes==1)
				{
					EventMsg("현재 다른 파티가 전투 중입니다.")	
					LogForScript(36,"시커의 탑 2번 방 입구_2번 방이 꽉 차서 대기중")
				}
			else ;;원 if(yes>0)
				{
					DeleteItemMulti(10265,1)
					QuestTeleport(1,81,426)
					EventMsg("이동합니다.")	
					ScriptTimer(yes,"sky2",136,361)	
					LogForScript(36,"시커의 탑 2번 방 입구_2번 방 입장")
				}
	}
	else
	{
		EventMsg("이 방에 입장하기 위해서는 '분노의 열쇠'가 필요합니다.")
	}
end
@Event00014	;;퀘스트 2번방 출구		
	QuestTeleport(1,136,361)
	if(yes==1)
	{
		EventMsg("방에서 나갑니다.")
		ScriptTimer(0,"0",0,0)
	}
	else 
	{
		EventMsg("이동에 실패했습니다.")
	}	
end
@Event00015	;;퀘스트 3번방 입구
CheckItemMulti(10266,1)	
	if(yes>=1)
	{
		BossTimerCheck(75,476,443,7,1800,300,1)
			if(yes==0)
				{
					EventMsg("현재 다른 유저가 전투 중입니다.")	
					LogForScript(36,"시커의 탑 3번 방 입구_3번 방이 시끄러워 대기중")
				}
			if(yes==1)
				{
					EventMsg("현재 다른 파티가 전투 중입니다.")	
					LogForScript(36,"시커의 탑 3번 방 입구_3번 방이 꽉 차서 대기중")
				}
			else ;;원 if(yes>0)
				{
					DeleteItemMulti(10266,1)
					QuestTeleport(1,457,434)
					EventMsg("이동합니다.")	
					ScriptTimer(yes,"sky2",398,367)	
					LogForScript(36,"시커의 탑 3번 방 입구_3번 방 입장")
				}
	}
	else
	{
		EventMsg("이 방에 입장하기 위해서는 '타협의 열쇠'가 필요합니다.")
	}
end
@Event00016	;;퀘스트 3번방 출구		
	QuestTeleport(1,398,367)
	if(yes == 1)
	{
		EventMsg("방에서 나갑니다.")
		ScriptTimer(0,"0",0,0)
	}
	else 
	{
		EventMsg("이동에 실패했습니다.")
	}	
end
@Event00017	;;퀘스트 4번방 입구
CheckItemMulti(10267,1)	
	if(yes>=1)
	{
		BossTimerCheck(76,484,58,7,1800,300,1)
			if(yes==0)
				{
					EventMsg("현재 다른 유저가 전투 중입니다.")	
					LogForScript(36,"시커의 탑 4번 방 입구_4번 방이 시끄러워 대기중")
				}
			if(yes==1)
				{
					EventMsg("현재 다른 파티가 전투 중입니다.")	
					LogForScript(36,"시커의 탑 4번 방 입구_4번 방이 꽉 차서 대기중")
				}
			else ;;원 if(yes>0)
				{
					DeleteItemMulti(10267,1)
					QuestTeleport(1,463,65)
					EventMsg("이동합니다.")	
					ScriptTimer(yes,"sky2",400,114)	
					LogForScript(36,"시커의 탑 4번 방 입구_4번 방 입장")
				}
	}
	else
	{
		EventMsg("이 방에 입장하기 위해서는 '우울의 열쇠'가 필요합니다.")
	}
end
@Event00018	;;퀘스트 4번방 출구
	QuestTeleport(1,400,114)
	if(yes == 1)
	{
		EventMsg("방에서 나갑니다.")
		ScriptTimer(0,"0",0,0)
	}
	else 
	{
		EventMsg("이동에 실패했습니다.")
	}	
end
@Event00019		
end
