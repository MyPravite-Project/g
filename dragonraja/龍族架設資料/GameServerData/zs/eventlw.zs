
@sys00 ; 처음 서버 Setting하는 함수.

        MaxNPC( 50 )
        
        MapName( "eventLW" )
        
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

@Event00000
end
@Event00001		
	CheckEventLocalWarStatus()
	if( yes == 0 )
	{
		goto END0101_
	}
	if( yes == 1 )
	{
		goto END0101_
	}
	if ( yes == 4 )
	{
		goto END0101_
	}
	goto END0102_
	
:END0101_
	CheckNation(3); 바이서스이면.
	if( yes==1)
	{
		EventMsg("헬턴트 마을로 이동합니다.")
		MapMove("Ma-in",245,115)
        }
	CheckNation(4); 자이펀이면
	if( yes==1)
	{
		EventMsg("레너스시로 이동합니다.")
		MapMove("Renes_c",210,175)
	}
	CheckNation(6)
	if( yes==1 )
	{
		EventMsg("바란탄으로 이동합니다.")
		MapMove("Barantan",325,98)
	}
	goto END0199_

:END0102_
	EventMsg("대회 도중에는 마을로 이동할 수가 없습니다. 대회가 끝나면 오시기 바랍니다.")
	goto END0199_
:END0199_


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
@Event00009		
end

@Event00010		
end
@Event00011		
end
@Event00012		
end
@Event00013		
end
@Event00014		
end
@Event00015		
end
@Event00016		
end
@Event00017		
end
@Event00018		
end
@Event00019		
end





