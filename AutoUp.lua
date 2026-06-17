-- This script was generated using the MoonVeil Obfuscator v1.4.5 [https://moonveil.cc]

local Ve,k,ob,f_,s_,c=bit32.bxor,pairs,getmetatable,type
local W,Fb,Md,Na,ye,xa,Bb,Qd,Ea,od,oc,Vb,wc,qe,Ac,hd,Y,gb,kc,i_,vb,z,U,vd,b_,Sc,Kd,Od,Jc,tb,Rc,Pe,qc,Wc;
W=(select);
Ea=(function(...)
    return{[1]={...},[2]=W('#',...)}
end);
ye=((function()
    local function lb(Zd,Bc,Dd)
        if Bc>Dd then
            return
        end
        return Zd[Bc],lb(Zd,Bc+1,Dd)
    end
    return lb
end)());
Y,Od=(string.gsub),(string.char);
gb=(function(fa_)
    fa_=Y(fa_,'[^ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=]','')
    return(fa_:gsub('.',function(Qc)
        if(Qc=='=')then
            return''
        end
        local re_,Kb='',(('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'):find(Qc)-1)
        for zd=6,1,-1 do
            re_=re_..(Kb%2^zd-Kb%2^(zd-1)>0 and'1'or'0')
        end
        return re_
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(oe)
        if(#oe~=8)then
            return''
        end
        local Be=0
        for Oc=1,8 do
            Be=Be+(oe:sub(Oc,Oc)=='1'and 2^(8-Oc)or 0)
        end
        return Od(Be)
    end))
end);
Wc,kc,i_,wc,Jc,oc,Qd,hd=string.unpack,string.sub,string.byte,bit32 .lshift,bit32 .rshift,bit32 .band,table.concat,{};
Kd=(function(Wd)
    local qb=hd[Wd]
    if qb then
        return qb
    end
    local Ob,mc,a_,Td,ra=wc(1,11),wc(1,5),1,{},''
    while a_<=#Wd do
        local Ib=i_(Wd,a_);
        a_=a_+1
        for Qe=1,8 do
            local _e=nil
            if oc(Ib,1)~=0 then
                if a_<=#Wd then
                    _e=kc(Wd,a_,a_);
                    a_=a_+1
                end
            else
                if a_+1<=#Wd then
                    local xd=Wc('>I2',Wd,a_);
                    a_=a_+2
                    local sb,Za=#ra-Jc(xd,5),oc(xd,(mc-1))+3;
                    _e=kc(ra,sb,sb+Za-1)
                end
            end
            Ib=Jc(Ib,1)
            if _e then
                Td[#Td+1]=_e;
                ra=kc(ra.._e,-Ob)
            end
        end
    end
    local n_=Qd(Td);
    hd[Wd]=n_
    return n_
end);
Vb=(function()
    local rb,sc,Sb,ke,Pb,ic,h,Xa,dc,rc,Ta,j=bit32 .bxor,bit32 .band,bit32 .bor,bit32 .lshift,bit32 .rshift,string.sub,string.pack,string.unpack,string.rep,table.pack,table.unpack,table.insert
    local function sd(Qa,Oe,id,ve,l_)
        local ad,cb,bb,Tc=Qa[Oe],Qa[id],Qa[ve],Qa[l_]
        local kd;
        ad=sc(ad+cb,4294967295);
        kd=rb(Tc,ad);
        Tc=sc(Sb(ke(kd,16),Pb(kd,16)),4294967295);
        bb=sc(bb+Tc,4294967295);
        kd=rb(cb,bb);
        cb=sc(Sb(ke(kd,12),Pb(kd,20)),4294967295);
        ad=sc(ad+cb,4294967295);
        kd=rb(Tc,ad);
        Tc=sc(Sb(ke(kd,8),Pb(kd,24)),4294967295);
        bb=sc(bb+Tc,4294967295);
        kd=rb(cb,bb);
        cb=sc(Sb(ke(kd,7),Pb(kd,25)),4294967295);
        Qa[Oe],Qa[id],Qa[ve],Qa[l_]=ad,cb,bb,Tc
        return Qa
    end
    local pc,ma={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
    local Gd=function(Wb,ne,Rd)
        pc[1],pc[2],pc[3],pc[4]=759453977,3755566606,2785516220,1239602558
        for Rb=1,8 do
            pc[Rb+4]=Wb[Rb]
        end
        pc[13]=ne
        for Aa=1,3 do
            pc[Aa+13]=Rd[Aa]
        end
        for Se=1,16 do
            ma[Se]=pc[Se]
        end
        for Yb=1,10 do
            sd(ma,1,5,9,13);
            sd(ma,2,6,10,14);
            sd(ma,3,7,11,15);
            sd(ma,4,8,12,16);
            sd(ma,1,6,11,16);
            sd(ma,2,7,12,13);
            sd(ma,3,8,9,14);
            sd(ma,4,5,10,15)
        end
        for Sd=1,16 do
            pc[Sd]=sc(pc[Sd]+ma[Sd],4294967295)
        end
        return pc
    end
    local function fd(Lc,Ue,Kc,Cb,Zc)
        local G=#Cb-Zc+1
        if G<64 then
            local Ab=ic(Cb,Zc);
            Cb=Ab..dc('\0',64-G);
            Zc=1
        end
        assert(#Cb>=64)
        local Ja,Cc=rc(Xa('<I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4',Cb,Zc)),Gd(Lc,Ue,Kc)
        for q=1,16 do
            Ja[q]=rb(Ja[q],Cc[q])
        end
        local Tb=h('<I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4',Ta(Ja))
        if G<64 then
            Tb=ic(Tb,1,G)
        end
        return Tb
    end
    local function Xd(jd)
        local O=''
        for X=1,#jd do
            O=O..jd[X]
        end
        return O
    end
    local function wd(F,Ze,g,vc)
        local ub,yd,Fd,hb=rc(Xa('<I4I4I4I4I4I4I4I4',F)),rc(Xa('<I4I4I4',g)),{},1
        while hb<=#vc do
            j(Fd,fd(ub,Ze,yd,vc,hb));
            hb=hb+64;
            Ze=Ze+1
        end
        return Xd(Fd)
    end
    return function(y,K,db)
        return wd(db,0,K,y)
    end
end)();
z=(function()
    local ie,ud,B,_b,nc,Ka,qa,sa,Ec,nd,Yd=bit32 .bnot,bit32 .bxor,bit32 .rshift,bit32 .lshift,bit32 .band,bit32 .bor,table.insert,table.unpack,string.rep,string.char,string.byte
    local function tc(Cd,Ca)
        local ld,v=B(Cd,Ca),_b(Cd,32-Ca)
        return nc(Ka(ld,v),4294967295)
    end
    local Xc=function(Dc)
        local V={1116352408,1899447441,3049323471,3921009573,961987163,1508970993,2453635748,2870763221,3624381080,310598401,607225278,1426881987,1925078388,2162078206,2614888103,3248222580,3835390401,4022224774,264347078,604807628,770255983,1249150122,1555081692,1996064986,2554220882,2821834349,2952996808,3210313671,3336571891,3584528711,113926993,338241895,666307205,773529912,1294757372,1396182291,1695183700,1986661051,2177026350,2456956037,2730485921,2820302411,3259730800,3345764771,3516065817,3600352804,4094571909,275423344,430227734,506948616,659060556,883997877,958139571,1322822218,1537002063,1747873779,1955562222,2024104815,2227730452,2361852424,2428436474,2756734187,3204031479,3329325298}
        local function aa(ge)
            local te=#ge
            local Eb=te*8;
            ge=ge..'\128'
            local P=64-((te+9)%64)
            if P~=64 then
                ge=ge..Ec('\0',P)
            end
            ge=ge..nd(nc(B(Eb,56),255),nc(B(Eb,48),255),nc(B(Eb,40),255),nc(B(Eb,32),255),nc(B(Eb,24),255),nc(B(Eb,16),255),nc(B(Eb,8),255),nc(Eb,255))
            return ge
        end
        local function xc(Nc)
            local ue={}
            for Le=1,#Nc,64 do
                qa(ue,Nc:sub(Le,Le+63))
            end
            return ue
        end
        local function Me(se_,A)
            local Ed={}
            for uc=1,64 do
                if uc<=16 then
                    Ed[uc]=Ka(_b(Yd(se_,(uc-1)*4+1),24),_b(Yd(se_,(uc-1)*4+2),16),_b(Yd(se_,(uc-1)*4+3),8),Yd(se_,(uc-1)*4+4))
                else
                    local E,je=ud(tc(Ed[uc-15],7),tc(Ed[uc-15],18),B(Ed[uc-15],3)),ud(tc(Ed[uc-2],17),tc(Ed[uc-2],19),B(Ed[uc-2],10));
                    Ed[uc]=nc(Ed[uc-16]+E+Ed[uc-7]+je,4294967295)
                end
            end
            local w_,Zb,cc,p,Ee,hc,Lb,Ae=sa(A)
            for Ua=1,64 do
                local pe,C=ud(tc(Ee,6),tc(Ee,11),tc(Ee,25)),ud(nc(Ee,hc),nc(ie(Ee),Lb))
                local ha,la,N=nc(Ae+pe+C+V[Ua]+Ed[Ua],4294967295),ud(tc(w_,2),tc(w_,13),tc(w_,22)),ud(nc(w_,Zb),nc(w_,cc),nc(Zb,cc))
                local qd=nc(la+N,4294967295);
                Ae=Lb;
                Lb=hc;
                hc=Ee;
                Ee=nc(p+ha,4294967295);
                p=cc;
                cc=Zb;
                Zb=w_;
                w_=nc(ha+qd,4294967295)
            end
            return nc(A[1]+w_,4294967295),nc(A[2]+Zb,4294967295),nc(A[3]+cc,4294967295),nc(A[4]+p,4294967295),nc(A[5]+Ee,4294967295),nc(A[6]+hc,4294967295),nc(A[7]+Lb,4294967295),nc(A[8]+Ae,4294967295)
        end
        Dc=aa(Dc)
        local Ga,Pd,le=xc(Dc),{1779033703,3144134277,1013904242,2773480762,1359893119,2600822924,528734635,1541459225},''
        for _c,jb in ipairs(Ga)do
            Pd={Me(jb,Pd)}
        end
        for Fa,Re in ipairs(Pd)do
            le=le..nd(nc(B(Re,24),255));
            le=le..nd(nc(B(Re,16),255));
            le=le..nd(nc(B(Re,8),255));
            le=le..nd(nc(Re,255))
        end
        return le
    end
    return Xc
end)()
local ee,_a,Wa,J,Ie,ba,Fe,Vc,d_,ze,Ge,ua,Id,Ud,Ld,ea,m,Nd,fe,u_,cd,ab,ib,Va,ja,Xe,fc,fb,be,Pc=type,pcall,error,tonumber,assert,select,setmetatable,string.format,string.unpack,string.sub,string.byte,string.char,table.move,table.pack,table.create,table.insert,table.concat,coroutine.create,coroutine.yield,coroutine.resume,coroutine.close,getfenv,bit32 .bor,bit32 .bxor,bit32 .band,bit32 .btest,bit32 .rshift,bit32 .lshift,bit32 .extract,{[60270]={{4,1,false},{7,9,false},{3,5,true},{4,5,true},{5,3,true},{5,7,false},{3,1,false},{7,1,true},{6,3,false},{6,5,true},{7,0,false},{5,4,false},{6,4,false},{5,3,true},{3,10,false},{6,5,true},{10,1,false},{7,1,true},{7,4,false},{7,4,true},{6,3,false},{3,10,true},{3,7,true},{7,7,false},{7,4,false},{6,4,false},{3,10,false},{3,2,true},{4,5,true},{10,10,false},{10,4,true},{7,4,true},{6,4,true},{6,4,false},{4,5,false},{7,1,true},{6,4,false},{5,10,true},{10,5,false},{7,9,false},{6,5,true},{5,4,false},{7,8,true},{6,5,true},{5,5,false},{7,4,true},{4,7,false},{7,4,false},{6,5,true},{5,10,false},{6,5,true},{7,1,true},{7,4,false},{6,4,false},{10,2,true},{10,1,true},{3,7,true},{10,10,true},{5,9,false},{10,2,false},{3,4,false},{4,3,true},{10,3,true},{7,4,false},{10,3,true},{7,4,false},{7,4,true},{5,10,false},{4,5,true},{7,2,true},{7,5,false},{6,8,true},{6,5,true},{6,7,true},{3,4,true},{3,7,false},{5,4,false},{4,4,false},{6,2,true},{6,3,false},{5,8,true},{7,4,false},{10,5,true},{7,4,false},{7,4,false},{10,9,true},{3,2,false},{7,4,false},{6,4,true},{7,4,false},{7,4,false},{7,4,false},{5,4,true},{5,5,false},{4,10,false},{7,9,false},{10,3,true},{6,3,false},{7,0,false},{6,5,true},{4,9,true},{6,4,false},{7,4,false},{7,1,false},{5,3,false},{3,4,true},{3,5,false},{7,4,false},{6,10,true},{7,3,false},{7,1,true},{6,4,true},{10,8,false},{7,4,true},{6,4,false},{7,4,false},{6,4,true},{7,5,false},{6,10,true},{4,7,false},{4,7,false},{10,4,true},{7,7,false},{7,4,false},{5,7,true},{7,1,true},{7,9,false},{6,10,true},{4,7,true},{4,3,false},{4,10,true},{3,7,false},{5,8,true},{4,4,false},{10,10,false},{7,3,true},{10,4,false},{10,10,true},{3,4,false},{7,7,false},{3,8,false},{6,4,true},{7,1,true},{3,1,true},{7,9,true},{5,1,true},{5,5,true},{7,9,true},{7,4,false},{7,4,false},{6,5,false},{10,1,false},{10,5,false},{7,1,true},{10,7,false},{10,1,false},{10,4,true},{7,4,false},{7,4,false},{5,1,true},{4,4,true},{7,9,false},{10,3,false},{7,4,false},{3,8,false},{6,7,false},{6,4,true},{10,9,true},{10,10,false},{7,1,true},{5,4,true},{4,3,false},{10,3,true},{5,2,true},{7,8,false},{7,1,true},{10,10,true},{3,5,true},{7,5,true},{3,10,false},{5,4,true},{6,4,false},{4,5,false},{4,4,false},{10,4,false},{6,9,true},{6,7,false},{7,4,false},{7,4,false},{4,4,true},{7,4,false},{10,3,true},{6,3,true},{6,1,true},{7,4,false},{7,4,false},{6,4,true},{6,2,true},{5,10,false},{7,4,false},{6,2,true},{7,4,false},{4,8,false},{7,1,false},{5,9,true},{7,8,true},{7,9,false},{10,9,false},{7,4,false},{7,1,true},{7,4,false},{5,8,false},{7,9,true},{6,4,false},{4,4,false},{6,5,false},{7,7,false},{7,5,true},{10,5,false},{4,5,true},{6,5,true},{7,8,false},{7,4,false},{5,8,true},{3,2,true},{6,4,false},{3,1,false},{7,4,false},{6,8,true},{7,4,false},{4,10,true},{10,9,false},{10,10,false},{4,8,false},{4,5,true},{6,8,true},{3,4,true},{7,7,false},{6,4,false},{5,7,true},{6,4,false},{7,7,false},{7,0,false},{6,8,true},{10,10,false},{5,4,false},{7,9,true},{3,9,false},{7,3,true},{4,3,false},{6,8,false},{4,6,false},{6,2,true},{7,4,false},{7,7,false},{10,5,false}},[56021]={},[6627]={}}
local Ya=(function(He)
    local bd=Pc[56021][He]
    if bd then
        return bd
    end
    local L=1
    local function o_()
        local ce,ed,dd,Db,Vd,Je,ec,oa,yc,_f,wb,md,Uc,Ye,xe,rd,ga,me,Nb,R,Hb,Xb,Ne,eb,Hd,M,Ce,Ha,xb,Ad,x,kb;
        Hd,ce={},function(bc,ta,gd)
            Hd[gd]=Ve(bc,37436)-Ve(ta,54794)
            return Hd[gd]
        end;
        Uc=Hd[18530]or ce(99043,39707,18530)
        while Uc~=32329 do
            if Uc>32036 then
                if Uc<44033 then
                    if Uc<40322 then
                        if Uc>35668 then
                            if Uc>=37573 then
                                if Uc<=38360 then
                                    if Uc>37573 then
                                        ga,Uc=nil,Hd[21764]or ce(4384,34677,21764)
                                    else
                                        Ne=d_('B',He,L);
                                        L,Uc=L+1,Hd[-29800]or ce(109023,27136,-29800)
                                    end
                                else
                                    xb[41523]=ja(fc(Ce,8),255);
                                    xb[8738]=ja(fc(Ce,16),255);
                                    xb[57350],Uc=ja(fc(Ce,24),255),Hd[-4744]or ce(13303,46510,-4744)
                                end
                            elseif Uc<=36588 then
                                if Uc>36277 then
                                    ed=d_('B',He,L);
                                    Uc,L=Hd[-15553]or ce(106412,58001,-15553),L+1
                                else
                                    Uc,ga=43698,Va(xb,-1425747041)
                                    continue
                                end
                            else
                                Je=Je+yc;
                                xe=Je
                                if Je~=Je then
                                    Uc=Hd[6526]or ce(10927,64724,6526)
                                else
                                    Uc=32467
                                end
                            end
                        elseif Uc>=33629 then
                            if Uc>34716 then
                                if(md>=0 and ec>Ce)or((md<0 or md~=md)and ec<Ce)then
                                    Uc=Hd[29640]or ce(27819,33948,29640)
                                else
                                    Uc=Hd[3101]or ce(81656,2296,3101)
                                end
                            elseif Uc<=33840 then
                                if Uc<=33629 then
                                    Ha[Ce],Uc=M,Hd[25768]or ce(114467,24078,25768)
                                else
                                    Uc,Hb=Hd[-11221]or ce(100514,21196,-11221),Ea(nil)
                                end
                            else
                                dd,Uc=rd,Hd[30931]or ce(36361,55327,30931)
                            end
                        elseif Uc<=32592 then
                            if Uc>32467 then
                                kb=d_('c'..xb,He,L);
                                Uc,L=Hd[-22300]or ce(109030,3478,-22300),L+xb
                            elseif Uc>32275 then
                                if(yc>=0 and Je>kb)or((yc<0 or yc~=yc)and Je<kb)then
                                    Uc=Hd[1149]or ce(12799,49156,1149)
                                else
                                    Uc=64573
                                end
                            else
                                Uc,Je=23041,Va(kb,716708033)
                                continue
                            end
                        else
                            Uc,Db=31572,Va(Ne,18)
                            continue
                        end
                    elseif Uc<=42779 then
                        if Uc<42267 then
                            if Uc>=41909 then
                                if Uc<=41909 then
                                    if(Ha>=0 and R>Xb)or((Ha<0 or Ha~=Ha)and R<Xb)then
                                        Uc=21479
                                    else
                                        Uc=20483
                                    end
                                else
                                    md=_f[Ce];
                                    me=md[19620]
                                    if me==1 then
                                        Uc=Hd[15321]or ce(115601,12902,15321)
                                        continue
                                    elseif me==6 then
                                        Uc=Hd[-31177]or ce(130726,16844,-31177)
                                        continue
                                    elseif me==10 then
                                        Uc=Hd[3887]or ce(64830,46090,3887)
                                        continue
                                    elseif me==3 then
                                        Uc=Hd[21073]or ce(24313,28072,21073)
                                        continue
                                    elseif me==8 then
                                        Uc=Hd[-29127]or ce(102808,5914,-29127)
                                        continue
                                    elseif me==2 then
                                        Uc=Hd[2160]or ce(101731,10057,2160)
                                        continue
                                    end
                                    Uc=Hd[29968]or ce(28957,46071,29968)
                                end
                            elseif Uc>40322 then
                                Ce=d_('<I4',He,L);
                                L,Uc=L+4,Hd[-7824]or ce(120452,34387,-7824)
                            else
                                kb=d_('<I4',He,L);
                                L,Uc=L+4,32275
                            end
                        elseif Uc>=42387 then
                            if Uc>42387 then
                                M,Uc=nil,Hd[-15947]or ce(10208,58485,-15947)
                            else
                                Uc,M=Hd[11661]or ce(5729,60377,11661),Va(Hb,18)
                                continue
                            end
                        elseif Uc>42267 then
                            md=d_('B',He,L);
                            Uc,L=Hd[19868]or ce(2719,33475,19868),L+1
                        else
                            ed=ed+ec;
                            Ce=ed
                            if ed~=ed then
                                Uc=14933
                            else
                                Uc=21121
                            end
                        end
                    elseif Uc>=43646 then
                        if Uc<=43698 then
                            if Uc>43646 then
                                xb=ga
                                if xb==0 then
                                    Uc=Hd[23660]or ce(106991,42910,23660)
                                    continue
                                else
                                    Uc=Hd[14287]or ce(101647,8982,14287)
                                    continue
                                end
                                Uc=Hd[9991]or ce(103495,42665,9991)
                            else
                                Ce=Ce+me;
                                M=Ce
                                if Ce~=Ce then
                                    Uc=Hd[-8271]or ce(14367,23142,-8271)
                                else
                                    Uc=Hd[-14619]or ce(18391,29164,-14619)
                                end
                            end
                        else
                            Uc,Vd=Hd[-608]or ce(111590,26388,-608),Va(oa,18)
                            continue
                        end
                    elseif Uc<=43101 then
                        if Uc>43071 then
                            wb=Ye;
                            _f,dd=Ld(wb),false;
                            R,Xb,Uc,Ha=1,wb,53679,1
                        else
                            Ad,Ye,Uc=x,nil,59687
                        end
                    else
                        Ce,Uc=nil,Hd[-13725]or ce(72794,16204,-13725)
                    end
                elseif Uc>=53679 then
                    if Uc<59687 then
                        if Uc>=55541 then
                            if Uc>57836 then
                                Uc,Nb=29060,Va(eb,18)
                                continue
                            elseif Uc<57213 then
                                Ha,Uc=Va(ed,18),16915
                                continue
                            elseif Uc>57213 then
                                Uc,x=43071,Va(Ad,18)
                                continue
                            else
                                oa=d_('B',He,L);
                                L,Uc=L+1,43814
                            end
                        elseif Uc<=54484 then
                            if Uc>53679 then
                                md[22278],Uc=Ha[md[62765]+1],Hd[-1400]or ce(8669,57527,-1400)
                            else
                                ed=R
                                if Xb~=Xb then
                                    Uc=21479
                                else
                                    Uc=41909
                                end
                            end
                        else
                            xe=Je
                            if kb~=kb then
                                Uc=Hd[-2155]or ce(105890,22499,-2155)
                            else
                                Uc=Hd[-22111]or ce(19962,46841,-22111)
                            end
                        end
                    elseif Uc<=62412 then
                        if Uc<=61794 then
                            if Uc<61424 then
                                wb=0;
                                Uc,R,_f,dd=18024,1,0,4
                            elseif Uc<=61424 then
                                Uc,Hb=61794,ga
                                continue
                            else
                                Uc,M=Hd[24540]or ce(98516,22913,24540),Hb
                            end
                        elseif Uc<=62151 then
                            Ha=Ha+rd;
                            ec=Ha
                            if Ha~=Ha then
                                Uc=Hd[-12239]or ce(113783,10357,-12239)
                            else
                                Uc=4014
                            end
                        else
                            Uc=Hd[-30556]or ce(80050,10375,-30556)
                            continue
                        end
                    elseif Uc<=64573 then
                        if Uc>62559 then
                            Uc,Db=37573,nil
                        else
                            Uc,ec=49720,Va(Ce,716708033)
                            continue
                        end
                    else
                        Ce=ed
                        if rd~=rd then
                            Uc=Hd[-20211]or ce(31064,26373,-20211)
                        else
                            Uc=21121
                        end
                    end
                elseif Uc>=49935 then
                    if Uc>51451 then
                        if Uc>=52852 then
                            if Uc>52852 then
                                ec=Ha
                                if ed~=ed then
                                    Uc=Hd[7822]or ce(103165,1791,7822)
                                else
                                    Uc=Hd[5571]or ce(7141,44065,5571)
                                end
                            else
                                Uc,dd=Hd[-26529]or ce(633,21551,-26529),false
                            end
                        else
                            Uc,M=Hd[-31081]or ce(45299,51009,-31081),nil
                        end
                    elseif Uc<=50709 then
                        if Uc>50126 then
                            Uc,ec=41655,nil
                        elseif Uc<=49935 then
                            Je,kb=ja(fc(Ce,8),16777215),nil;
                            kb=if Je<8388608 then Je else Je-16777216;
                            xb[62765],Uc=kb,Hd[31979]or ce(22578,24045,31979)
                        else
                            Vd,Uc=nil,57213
                        end
                    else
                        rd,Uc=ga,34716
                        continue
                    end
                elseif Uc>47178 then
                    if Uc>49720 then
                        Uc,Hb=Hd[9636]or ce(66699,2151,9636),Ea''
                        continue
                    elseif Uc>47737 then
                        Ce=ec;
                        md=ja(Ce,255);
                        me=Pc[60270][md+1];
                        M,Hb,ga=me[1],me[2],me[3];
                        xb={[40226]=0,[39234]=0,[46391]=0,[41523]=0,[57350]=0,[4323]=0,[62765]=0,[60831]=nil,[5446]=0,[18964]=0,[8738]=0,[19620]=Hb,[44767]=0,[24430]=md,[22278]=0};
                        ea(_f,xb)
                        if M==4 then
                            Uc=Hd[29541]or ce(30205,62136,29541)
                            continue
                        elseif M==7 then
                            Uc=Hd[28101]or ce(68396,10971,28101)
                            continue
                        elseif M==6 then
                            Uc=Hd[28373]or ce(24540,48991,28373)
                            continue
                        end
                        Uc=Hd[14965]or ce(25894,28409,14965)
                    else
                        Xb=0;
                        ed,Ha,Uc,rd=4,0,Hd[-8229]or ce(106320,60916,-8229),1
                    end
                elseif Uc>=46428 then
                    if Uc>46428 then
                        M,Uc=ye(Hb[1],1,Hb[2]),Hd[-3167]or ce(121139,4536,-3167)
                    else
                        me=md
                        if me==0 then
                            Uc=Hd[-18618]or ce(2304,49414,-18618)
                            continue
                        elseif me==6 then
                            Uc=Hd[25148]or ce(8290,18307,25148)
                            continue
                        elseif me==5 then
                            Uc=Hd[595]or ce(121389,30460,595)
                            continue
                        end
                        Uc=33629
                    end
                elseif Uc>44033 then
                    Uc,Ye=43101,Va(wb,-1425747041)
                    continue
                else
                    Uc,ed=Hd[15117]or ce(22386,35883,15117),Va(rd,-1425747041)
                    continue
                end
            elseif Uc<=18024 then
                if Uc<10775 then
                    if Uc>4387 then
                        if Uc<=7198 then
                            if Uc>7035 then
                                Uc,md=Hd[-13838]or ce(10778,54464,-13838),Va(me,18)
                                continue
                            elseif Uc<5917 then
                                Hb=d_('B',He,L);
                                Uc,L=42387,L+1
                            elseif Uc>5917 then
                                Uc,ec[M]=Hd[-25792]or ce(30460,60488,-25792),o_()
                            else
                                Uc,Je=Hd[-16298]or ce(109648,30432,-16298),nil
                            end
                        elseif Uc<=8405 then
                            if Uc<=7607 then
                                return{[31467]=eb,[29516]=ec,[64171]=oa,[17277]=_f,[49709]=Ad,[61675]=''}
                            else
                                Uc,Hb=24778,nil
                            end
                        else
                            Ha,Uc=nil,36588
                        end
                    elseif Uc<=3330 then
                        if Uc>=2709 then
                            if Uc>=3076 then
                                if Uc>3076 then
                                    M=md[4323];
                                    Hb,ga=fc(M,30),ja(fc(M,20),1023);
                                    md[22278]=Ha[ga+1];
                                    md[18964]=Hb
                                    if Hb==2 then
                                        Uc=Hd[-28288]or ce(2478,60510,-28288)
                                        continue
                                    elseif Hb==3 then
                                        Uc=Hd[11488]or ce(61760,61493,11488)
                                        continue
                                    end
                                    Uc=Hd[-32014]or ce(1586,49376,-32014)
                                else
                                    Uc=Hd[-22310]or ce(81456,12256,-22310)
                                    continue
                                end
                            else
                                ec=ec+md;
                                me=ec
                                if ec~=ec then
                                    Uc=Hd[-21184]or ce(8936,53977,-21184)
                                else
                                    Uc=Hd[-2658]or ce(24875,45513,-2658)
                                end
                            end
                        elseif Uc>1151 then
                            Uc=Hd[-1644]or ce(5696,33466,-1644)
                            continue
                        else
                            _f=_f+R;
                            Xb=_f
                            if _f~=_f then
                                Uc=Hd[21294]or ce(115957,29357,21294)
                            else
                                Uc=30382
                            end
                        end
                    elseif Uc>4014 then
                        Uc,md[22278]=Hd[26939]or ce(99487,20341,26939),Ha[md[46391]+1]
                    elseif Uc<=3616 then
                        R=R+Ha;
                        ed=R
                        if R~=R then
                            Uc=21479
                        else
                            Uc=41909
                        end
                    else
                        if(rd>=0 and Ha>ed)or((rd<0 or rd~=rd)and Ha<ed)then
                            Uc=Hd[-21277]or ce(24114,19016,-21277)
                        else
                            Uc=Hd[2620]or ce(129862,5888,2620)
                        end
                    end
                elseif Uc<=14933 then
                    if Uc<=12236 then
                        if Uc<11781 then
                            if Uc>10775 then
                                Ad=d_('B',He,L);
                                L,Uc=L+1,57836
                            else
                                Je,Uc=nil,32592
                            end
                        elseif Uc>11804 then
                            Uc,R=Hd[32442]or ce(25225,41760,32442),Va(Xb,-1425747041)
                            continue
                        elseif Uc<=11781 then
                            if(me>=0 and Ce>md)or((me<0 or me~=me)and Ce<md)then
                                Uc=Hd[25210]or ce(62408,37431,25210)
                            else
                                Uc=Hd[30468]or ce(54436,64791,30468)
                            end
                        else
                            Uc,md[22278]=Hd[-17728]or ce(21799,40957,-17728),be(md[4323],0,16)
                        end
                    elseif Uc<13567 then
                        xb=0;
                        Je,yc,kb,Uc=0,1,4,55130
                    elseif Uc>13567 then
                        rd,ec,ed,Uc=wb,1,1,17790
                    else
                        me=d_('B',He,L);
                        L,Uc=L+1,7198
                    end
                elseif Uc>=17044 then
                    if Uc>=17790 then
                        if Uc<=17790 then
                            Ce=ed
                            if rd~=rd then
                                Uc=Hd[1601]or ce(23070,34817,1601)
                            else
                                Uc=Hd[-8249]or ce(120987,2142,-8249)
                            end
                        else
                            Xb=_f
                            if dd~=dd then
                                Uc=Hd[18083]or ce(108020,21420,18083)
                            else
                                Uc=30382
                            end
                        end
                    elseif Uc>17044 then
                        Uc,Ce=Hd[-29885]or ce(9096,36605,-29885),Va(md,18)
                        continue
                    else
                        md[22278]=Ha[be(md[4323],0,24)+1];
                        md[40226],Uc=be(md[4323],31,1)==1,Hd[-29011]or ce(119734,4716,-29011)
                    end
                elseif Uc>15911 then
                    ed=Ha;
                    wb=ib(wb,fb(ja(ed,127),Xb*7))
                    if not Xe(ed,128)then
                        Uc=Hd[6051]or ce(45181,49207,6051)
                        continue
                    end
                    Uc=Hd[15909]or ce(11287,28582,15909)
                elseif Uc>15677 then
                    if ga then
                        Uc=Hd[-5395]or ce(2850,21515,-5395)
                        continue
                    end
                    Uc=Hd[-15300]or ce(25627,64294,-15300)
                else
                    xb,Je=ja(fc(M,10),1023),ja(fc(M,0),1023);
                    md[44767]=Ha[xb+1];
                    md[5446],Uc=Ha[Je+1],Hd[-25194]or ce(17629,36791,-25194)
                end
            elseif Uc>=24894 then
                if Uc>28860 then
                    if Uc>=31572 then
                        if Uc<=31627 then
                            if Uc<=31572 then
                                Ne=Db;
                                xb=ib(xb,fb(ja(Ne,127),xe*7))
                                if not Xe(Ne,128)then
                                    Uc=Hd[27344]or ce(59139,65215,27344)
                                    continue
                                end
                                Uc=Hd[-29804]or ce(127567,6465,-29804)
                            else
                                Xb=R;
                                Ha=Ld(Xb);
                                ec,Uc,ed,rd=1,Hd[-18580]or ce(104495,56196,-18580),1,Xb
                            end
                        else
                            ed=ed+ec;
                            Ce=ed
                            if ed~=ed then
                                Uc=Hd[6620]or ce(111691,27242,6620)
                            else
                                Uc=27731
                            end
                        end
                    elseif Uc>=29417 then
                        if Uc<=29417 then
                            Uc,Hb=Hd[-27796]or ce(122055,16571,-27796),Ea(Je)
                            continue
                        else
                            if(R>=0 and _f>dd)or((R<0 or R~=R)and _f<dd)then
                                Uc=Hd[18308]or ce(12080,56544,18308)
                            else
                                Uc=10715
                            end
                        end
                    else
                        eb,x,Uc=Nb,nil,Hd[-23309]or ce(61168,39268,-23309)
                    end
                elseif Uc<27727 then
                    if Uc<=27159 then
                        if Uc<25739 then
                            xb=ja(fc(M,10),1023);
                            md[44767],Uc=Ha[xb+1],Hd[25320]or ce(15515,59273,25320)
                        elseif Uc>25739 then
                            ed,Uc=nil,23759
                        else
                            xb[41523]=ja(fc(Ce,8),255);
                            Je=ja(fc(Ce,16),65535);
                            xb[39234]=Je;
                            kb=nil;
                            kb=if Je<32768 then Je else Je-65536;
                            xb[46391],Uc=kb,Hd[-26143]or ce(12038,43289,-26143)
                        end
                    else
                        rd=ed;
                        ec=Ld(rd);
                        Ce,Uc,md,me=1,Hd[-3221]or ce(5584,64224,-3221),rd,1
                    end
                elseif Uc<27969 then
                    if Uc<=27727 then
                        eb=d_('B',He,L);
                        L,Uc=L+1,59229
                    else
                        if(ec>=0 and ed>rd)or((ec<0 or ec~=ec)and ed<rd)then
                            Uc=Hd[425]or ce(3753,58484,425)
                        else
                            Uc=Hd[25914]or ce(126355,3244,25914)
                        end
                    end
                elseif Uc>27969 then
                    Uc,oa,Nb=Hd[19228]or ce(107973,7584,19228),Vd,nil
                else
                    Uc,md[22278]=Hd[-11459]or ce(122327,1229,-11459),Ha[md[4323]+1]
                end
            elseif Uc<22238 then
                if Uc<19872 then
                    if Uc>19586 then
                        Uc=Hd[-12700]or ce(24726,45823,-12700)
                        continue
                    elseif Uc>18058 then
                        rd,Uc=nil,Hd[28480]or ce(69400,261,28480)
                    else
                        Hb=M;
                        rd=ib(rd,fb(ja(Hb,127),me*7))
                        if not Xe(Hb,128)then
                            Uc=Hd[8829]or ce(96712,11810,8829)
                            continue
                        end
                        Uc=Hd[5233]or ce(2307,18080,5233)
                    end
                elseif Uc>21121 then
                    R,Uc=nil,Hd[-2345]or ce(101241,35014,-2345)
                elseif Uc<20483 then
                    me=ec
                    if Ce~=Ce then
                        Uc=Hd[-9898]or ce(31032,59657,-9898)
                    else
                        Uc=Hd[-25035]or ce(103795,44529,-25035)
                    end
                elseif Uc<=20483 then
                    if dd then
                        Uc=Hd[-17720]or ce(110954,33512,-17720)
                        continue
                    else
                        Uc=Hd[15767]or ce(21034,42398,15767)
                        continue
                    end
                    Uc=Hd[-16454]or ce(105168,11462,-16454)
                else
                    if(ec>=0 and ed>rd)or((ec<0 or ec~=ec)and ed<rd)then
                        Uc=Hd[-17334]or ce(21634,23139,-17334)
                    else
                        Uc=22238
                    end
                end
            elseif Uc<23298 then
                if Uc>=22717 then
                    if Uc<=22717 then
                        md=Ce;
                        Xb=ib(Xb,fb(ja(md,127),ec*7))
                        if not Xe(md,128)then
                            Uc=Hd[-12450]or ce(43725,58880,-12450)
                            continue
                        end
                        Uc=Hd[-3758]or ce(95382,9705,-3758)
                    else
                        kb=Je;
                        xb[4323]=kb;
                        ea(_f,{});
                        Uc=Hd[28209]or ce(67067,6342,28209)
                    end
                else
                    Uc,md=13567,nil
                end
            elseif Uc>=24638 then
                if Uc>24638 then
                    ga=d_('<d',He,L);
                    L,Uc=L+8,61424
                else
                    Je,Uc=kb,Hd[19212]or ce(26862,20963,19212)
                    continue
                end
            elseif Uc<=23298 then
                M=Ce
                if md~=md then
                    Uc=7607
                else
                    Uc=11781
                end
            else
                rd=0;
                Ce,Uc,ec,md=4,19872,0,1
            end
        end
    end
    local jc=o_();
    Pc[56021][He]=jc
    return jc
end)
local zb=(function(Qb,lc)
    Qb=Ya(Qb)
    local nb=ab()
    local function da(pa,S)
        local pb=(function(...)
            return{...},ba('#',...)
        end)
        local We;
        We=(function(_d,Ia,wa)
            if Ia>wa then
                return
            end
            return _d[Ia],We(_d,Ia+1,wa)
        end)
        local function yb(r_,ka,ia,Jb)
            local Sa,pd,na,Ke,Z,td,Q,ya,De,Hc,I,D,va,e_,we,Ra,T,Mc,Yc,La,H,ac,Bd,t_;
            De,I=function(Fc,Ub,af)
                I[Fc]=Ve(af,46481)-Ve(Ub,37419)
                return I[Fc]
            end,{};
            Sa=I[-3241]or De(-3241,8000,98402)
            repeat
                if Sa<=34107 then
                    if Sa>17859 then
                        if Sa<25261 then
                            if Sa>=20739 then
                                if Sa<22393 then
                                    if Sa<20984 then
                                        if Sa<=20739 then
                                            Id(D,1,td,va,r_);
                                            Sa=I[-30654]or De(-30654,770,115183)
                                        else
                                            t_,pd,ya=ac
                                            if f_(t_)~='function'then
                                                Sa=I[-30011]or De(-30011,54602,29142)
                                                continue
                                            end
                                            Sa=I[-9515]or De(-9515,50190,123347)
                                        end
                                    elseif Sa>=21386 then
                                        if Sa>21386 then
                                            Q[24430]=189;
                                            Ra+=1;
                                            Sa=I[-14140]or De(-14140,53429,102498)
                                        else
                                            La,D=u_(we[Q],pd,r_[va+1],r_[va+2])
                                            if not La then
                                                Sa=I[-22564]or De(-22564,11827,28644)
                                                continue
                                            end
                                            Sa=I[-12138]or De(-12138,23243,106454)
                                        end
                                    else
                                        t_[44767]=ya;
                                        La,Sa=nil,27411
                                    end
                                elseif Sa<23919 then
                                    if Sa>22658 then
                                        Sa,ya=53679,td
                                        continue
                                    elseif Sa<=22393 then
                                        t_[22278]=pd
                                        if va==2 then
                                            Sa=I[-31065]or De(-31065,16121,20171)
                                            continue
                                        elseif va==3 then
                                            Sa=I[-32354]or De(-32354,23629,104553)
                                            continue
                                        end
                                        Sa=I[21538]or De(21538,4765,24822)
                                    else
                                        if H>71 then
                                            Sa=I[-13875]or De(-13875,63658,107022)
                                            continue
                                        else
                                            Sa=I[17964]or De(17964,26114,66972)
                                            continue
                                        end
                                        Sa=I[-18753]or De(-18753,28609,87214)
                                    end
                                elseif Sa<=24466 then
                                    if Sa<=23919 then
                                        na,Sa=va+td-1,I[15074]or De(15074,10312,114423)
                                    else
                                        ya,Sa=nil,29479
                                    end
                                else
                                    if D==-2 then
                                        Sa=I[-17316]or De(-17316,63436,106141)
                                        continue
                                    else
                                        Sa=I[-23366]or De(-23366,29447,17510)
                                        continue
                                    end
                                    Sa=I[25]or De(25,11979,71076)
                                end
                            elseif Sa<=19371 then
                                if Sa>=19033 then
                                    if Sa>=19239 then
                                        if Sa<=19239 then
                                            Sa,ya=I[-2858]or De(-2858,62837,28559),t_-1
                                        else
                                            Ra+=Q[46391];
                                            Sa=I[-29589]or De(-29589,19311,67848)
                                        end
                                    else
                                        va[22278]=t_;
                                        Sa,Q[24430]=I[18290]or De(18290,27870,88027),11
                                    end
                                elseif Sa>18646 then
                                    Bd=false;
                                    Ra+=1
                                    if H>127 then
                                        Sa=I[-4464]or De(-4464,20785,75601)
                                        continue
                                    else
                                        Sa=I[-12697]or De(-12697,37875,14804)
                                        continue
                                    end
                                    Sa=I[-25165]or De(-25165,37041,20606)
                                elseif Sa>18522 then
                                    D[2]=D[3][D[1]];
                                    D[3]=D;
                                    D[1]=2;
                                    Sa,ac[La]=I[13568]or De(13568,51692,126069),nil
                                else
                                    La,Sa=La..ua(Va(Ge(pd,Mc+1),Ge(ya,Mc%#ya+1))),I[32619]or De(32619,64789,101677)
                                end
                            elseif Sa<20184 then
                                if Sa<=19897 then
                                    Mc=Mc+Z;
                                    Ke=Mc
                                    if Mc~=Mc then
                                        Sa=I[7224]or De(7224,6538,103770)
                                    else
                                        Sa=56614
                                    end
                                else
                                    Sa,ya=26655,nil
                                end
                            elseif Sa<=20184 then
                                if(T>=0 and D>td)or((T<0 or T~=T)and D<td)then
                                    Sa=I[-25279]or De(-25279,20444,125657)
                                else
                                    Sa=I[-29539]or De(-29539,13339,23323)
                                end
                            else
                                ya..=r_[T];
                                Sa=I[20271]or De(20271,57341,9238)
                            end
                        elseif Sa>29479 then
                            if Sa>=33105 then
                                if Sa>33480 then
                                    if Sa<=33872 then
                                        Sa,r_[Q[57350]]=I[-5660]or De(-5660,27940,88053),ya
                                    else
                                        if H>225 then
                                            Sa=I[11001]or De(11001,62942,124571)
                                            continue
                                        else
                                            Sa=I[22325]or De(22325,49332,57864)
                                            continue
                                        end
                                        Sa=I[25458]or De(25458,39792,22817)
                                    end
                                elseif Sa<=33292 then
                                    if Sa<=33105 then
                                        Sa,t_=I[17184]or De(17184,5388,25617),La
                                        continue
                                    else
                                        va=S[Q[8738]+1];
                                        Sa,va[3][va[1]]=I[-19733]or De(-19733,60519,119856),r_[Q[41523]]
                                    end
                                else
                                    Ra-=1;
                                    Sa,ia[Ra]=I[-6260]or De(-6260,50618,102263),{[24430]=222,[41523]=Va(Q[41523],19),[8738]=Va(Q[8738],35),[57350]=0}
                                end
                            elseif Sa<30325 then
                                if Sa<=29708 then
                                    td=td+Mc;
                                    Hc=td
                                    if td~=td then
                                        Sa=I[-654]or De(-654,45857,111054)
                                    else
                                        Sa=53203
                                    end
                                else
                                    Sa=I[20583]or De(20583,30268,19776)
                                    continue
                                end
                            elseif Sa>=31974 then
                                if Sa>31974 then
                                    Ke=Mc
                                    if Hc~=Hc then
                                        Sa=I[5183]or De(5183,26100,80024)
                                    else
                                        Sa=I[-8286]or De(-8286,19631,69179)
                                    end
                                else
                                    va=ob(t_)
                                    if va~=nil and va.__iter~=nil then
                                        Sa=I[-16271]or De(-16271,2566,115442)
                                        continue
                                    elseif f_(t_)=='table'then
                                        Sa=I[17079]or De(17079,2572,4256)
                                        continue
                                    end
                                    Sa=I[3924]or De(3924,23149,95218)
                                end
                            else
                                va,t_=nil,r_[Q[41523]];
                                va=ee(t_)=='function'
                                if not va then
                                    Sa=I[20854]or De(20854,44150,64302)
                                    continue
                                end
                                Sa=I[-360]or De(-360,46912,40205)
                            end
                        elseif Sa>=27738 then
                            if Sa<=29128 then
                                if Sa>28923 then
                                    La,D=t_(pd,ya);
                                    ya=La
                                    if ya==nil then
                                        Sa=30278
                                    else
                                        Sa=63742
                                    end
                                elseif Sa<=27972 then
                                    if Sa>27738 then
                                        if Q[57350]==26 then
                                            Sa=I[30581]or De(30581,39678,15884)
                                            continue
                                        else
                                            Sa=I[7571]or De(7571,8714,81177)
                                            continue
                                        end
                                        Sa=I[23961]or De(23961,45808,111009)
                                    else
                                        Ra+=Q[46391];
                                        Sa=I[-30786]or De(-30786,12643,78604)
                                    end
                                else
                                    if H>45 then
                                        Sa=I[27078]or De(27078,50855,16219)
                                        continue
                                    else
                                        Sa=I[-32378]or De(-32378,4470,116317)
                                        continue
                                    end
                                    Sa=I[-26519]or De(-26519,43420,109213)
                                end
                            elseif Sa>29376 then
                                La,D=t_[44767],Q[44767];
                                D='\149\27Z\23Q'..D;
                                td='';
                                T,Mc,Sa,Hc=0,#La-1,54763,1
                            else
                                return We(r_,va,va+ya-1)
                            end
                        elseif Sa>27167 then
                            if Sa>27258 then
                                D,td=t_[5446],Q[5446];
                                td='\149\27Z\23Q'..td;
                                T='';
                                Hc,Sa,Z,Mc=#D-1,32051,1,0
                            else
                                if H>210 then
                                    Sa=I[12954]or De(12954,7313,20101)
                                    continue
                                else
                                    Sa=I[-28312]or De(-28312,46296,59665)
                                    continue
                                end
                                Sa=I[1723]or De(1723,32300,96973)
                            end
                        elseif Sa>26655 then
                            Ra+=1;
                            Sa=I[26885]or De(26885,65423,124264)
                        elseif Sa>25338 then
                            La,D=t_[44767],Q[44767];
                            D='\149\27Z\23Q'..D;
                            td='';
                            Sa,Mc,Hc,T=60270,#La-1,1,0
                        elseif Sa<=25261 then
                            Sa,r_[Q[41523]]=I[-9849]or De(-9849,34524,29879),pd[Q[44767]][Q[5446]]
                        else
                            if H>25 then
                                Sa=I[-21872]or De(-21872,35146,58054)
                                continue
                            else
                                Sa=I[3084]or De(3084,34027,17645)
                                continue
                            end
                            Sa=I[-16450]or De(-16450,52710,128691)
                        end
                    elseif Sa<8868 then
                        if Sa>=4299 then
                            if Sa>=5966 then
                                if Sa>=8443 then
                                    if Sa>=8614 then
                                        if Sa>8614 then
                                            D[Hc],Sa=Yc,I[31060]or De(31060,65419,21565)
                                        else
                                            va,t_,pd=Q[8738],Q[57350],Q[22278];
                                            ya=r_[t_];
                                            r_[va+1]=ya;
                                            r_[va]=ya[pd];
                                            Ra+=1;
                                            Sa=I[17129]or De(17129,2409,117510)
                                        end
                                    else
                                        Ra-=1;
                                        Sa,ia[Ra]=I[-3794]or De(-3794,60722,120831),{[24430]=84,[41523]=Va(Q[41523],102),[8738]=Va(Q[8738],153),[57350]=0}
                                    end
                                elseif Sa<=7402 then
                                    if Sa<=5966 then
                                        D[2]=D[3][D[1]];
                                        D[3]=D;
                                        D[1]=2;
                                        Sa,ac[La]=I[-16557]or De(-16557,42257,27959),nil
                                    else
                                        Ra-=1;
                                        ia[Ra],Sa={[24430]=115,[41523]=Va(Q[41523],75),[8738]=Va(Q[8738],142),[57350]=0},I[31916]or De(31916,4582,119475)
                                    end
                                else
                                    Wa(D);
                                    Sa=I[-20011]or De(-20011,36215,13650)
                                end
                            elseif Sa<4521 then
                                if Sa<=4299 then
                                    Id(D,1,t_,va+3,r_);
                                    r_[va+2]=r_[va+3];
                                    Ra+=Q[46391];
                                    Sa=I[-24011]or De(-24011,30185,97926)
                                else
                                    va,t_=Q[41523],Q[8738]-1
                                    if t_==-1 then
                                        Sa=I[-15668]or De(-15668,1435,98516)
                                        continue
                                    end
                                    Sa=I[-3980]or De(-3980,54969,112941)
                                end
                            elseif Sa<=4543 then
                                if Sa<=4521 then
                                    Sa,T=I[7223]or De(7223,42505,13386),T..ua(Va(Ge(D,Ke+1),Ge(td,Ke%#td+1)))
                                else
                                    va=ob(t_)
                                    if va~=nil and va.__iter~=nil then
                                        Sa=I[-26222]or De(-26222,61577,114592)
                                        continue
                                    elseif f_(t_)=='table'then
                                        Sa=I[7880]or De(7880,58340,108006)
                                        continue
                                    end
                                    Sa=I[11369]or De(11369,30520,123722)
                                end
                            else
                                if H>153 then
                                    Sa=I[30668]or De(30668,46855,15066)
                                    continue
                                else
                                    Sa=I[9919]or De(9919,55885,49695)
                                    continue
                                end
                                Sa=I[7264]or De(7264,63234,130543)
                            end
                        elseif Sa>3152 then
                            if Sa<3703 then
                                if Sa>3338 then
                                    Ra+=Q[46391];
                                    Sa=I[974]or De(974,53242,128183)
                                else
                                    t_,pd,ya=k(t_);
                                    Sa=I[18061]or De(18061,47525,105530)
                                end
                            elseif Sa<3731 then
                                D[Hc],Sa=S[Z[8738]+1],I[28256]or De(28256,41017,5007)
                            elseif Sa<=3731 then
                                va,Sa,t_,pd=Q[18964],I[12591]or De(12591,11001,81589),ia[Ra+1],nil
                            else
                                Wa'';
                                Sa=I[-2989]or De(-2989,13015,4540)
                            end
                        elseif Sa<=1641 then
                            if Sa>1274 then
                                Ra-=1;
                                ia[Ra],Sa={[24430]=24,[41523]=Va(Q[41523],188),[8738]=Va(Q[8738],44),[57350]=0},I[30589]or De(30589,65278,124347)
                            elseif Sa<=817 then
                                if Sa<=625 then
                                    Sa,D=I[14714]or De(14714,36727,27879),D..ua(Va(Ge(ya,Hc+1),Ge(La,Hc%#La+1)))
                                else
                                    Ra+=Q[46391];
                                    Sa=I[4583]or De(4583,27934,87835)
                                end
                            else
                                if not r_[Q[41523]]then
                                    Sa=I[28984]or De(28984,2597,4169)
                                    continue
                                end
                                Sa=I[-5757]or De(-5757,2874,117239)
                            end
                        elseif Sa<=2633 then
                            Ra-=1;
                            Sa,ia[Ra]=I[30319]or De(30319,18283,68868),{[24430]=123,[41523]=Va(Q[41523],113),[8738]=Va(Q[8738],127),[57350]=0}
                        else
                            T=La
                            if D~=D then
                                Sa=I[14071]or De(14071,51091,28569)
                            else
                                Sa=46078
                            end
                        end
                    elseif Sa>=14427 then
                        if Sa>16405 then
                            if Sa>=16996 then
                                if Sa>17329 then
                                    Sa,r_[Q[41523]]=I[8211]or De(8211,65058,129743),#r_[Q[8738]]
                                elseif Sa>16996 then
                                    La=La+td;
                                    T=La
                                    if La~=La then
                                        Sa=I[-11255]or De(-11255,52671,22133)
                                    else
                                        Sa=I[22166]or De(22166,26368,72888)
                                    end
                                else
                                    if(Mc>=0 and td>T)or((Mc<0 or Mc~=Mc)and td<T)then
                                        Sa=I[13579]or De(13579,35380,113719)
                                    else
                                        Sa=625
                                    end
                                end
                            elseif Sa>16506 then
                                if H>7 then
                                    Sa=I[-10282]or De(-10282,6933,121090)
                                    continue
                                else
                                    Sa=I[-22463]or De(-22463,5171,4655)
                                    continue
                                end
                                Sa=I[-17620]or De(-17620,1757,118234)
                            else
                                Ra+=1;
                                Sa=I[-7515]or De(-7515,6096,122049)
                            end
                        elseif Sa>15350 then
                            if Sa>15487 then
                                if H>227 then
                                    Sa=I[4210]or De(4210,3370,106727)
                                    continue
                                else
                                    Sa=I[23211]or De(23211,44014,2705)
                                    continue
                                end
                                Sa=I[-13163]or De(-13163,57872,124417)
                            else
                                Yc={[1]=e_,[3]=r_};
                                ac[e_],Sa=Yc,I[-30457]or De(-30457,15650,25747)
                            end
                        elseif Sa>15232 then
                            r_[Q[8738]]=Ld(Q[4323]);
                            Ra+=1;
                            Sa=I[-8299]or De(-8299,62202,127415)
                        elseif Sa>14989 then
                            if(Hc>=0 and T>Mc)or((Hc<0 or Hc~=Hc)and T<Mc)then
                                Sa=I[20523]or De(20523,22685,102484)
                            else
                                Sa=57045
                            end
                        elseif Sa<=14427 then
                            td,Sa=pd-1,I[27129]or De(27129,5858,24669)
                        else
                            t_,pd,ya=we
                            if f_(t_)~='function'then
                                Sa=I[17059]or De(17059,27146,113777)
                                continue
                            end
                            Sa=I[-30480]or De(-30480,23692,128510)
                        end
                    elseif Sa<=12028 then
                        if Sa>10352 then
                            if Sa<=11027 then
                                Ra+=Q[46391];
                                Sa=I[-3043]or De(-3043,36645,112114)
                            else
                                if r_[Q[41523]]then
                                    Sa=I[32277]or De(32277,8615,27406)
                                    continue
                                end
                                Sa=I[-5465]or De(-5465,5831,122320)
                            end
                        elseif Sa>9853 then
                            if Q[57350]==124 then
                                Sa=I[25642]or De(25642,27763,71344)
                                continue
                            else
                                Sa=I[31120]or De(31120,49467,53655)
                                continue
                            end
                            Sa=I[6004]or De(6004,14548,80837)
                        elseif Sa>=9118 then
                            if Sa>9118 then
                                td,Sa=td..ua(Va(Ge(La,Z+1),Ge(D,Z%#D+1))),I[-27096]or De(-27096,39147,4335)
                            else
                                e_=Z[8738];
                                Yc=ac[e_]
                                if Yc==nil then
                                    Sa=I[-4639]or De(-4639,30132,102799)
                                    continue
                                end
                                Sa=I[21071]or De(21071,46586,64603)
                            end
                        else
                            va,t_=Q[41523],Q[8738];
                            pd=t_-1
                            if pd==-1 then
                                Sa=I[-4827]or De(-4827,37062,20856)
                                continue
                            else
                                Sa=I[11448]or De(11448,28298,127577)
                                continue
                            end
                            Sa=I[21850]or De(21850,62745,27747)
                        end
                    elseif Sa<=13500 then
                        if Sa<12421 then
                            if H>130 then
                                Sa=I[9170]or De(9170,53122,106816)
                                continue
                            else
                                Sa=I[27269]or De(27269,33486,43753)
                                continue
                            end
                            Sa=I[7601]or De(7601,30978,97263)
                        elseif Sa<=12421 then
                            t_,pd,ya=k(t_);
                            Sa=I[6152]or De(6152,53759,20689)
                        else
                            Ra-=1;
                            Sa,ia[Ra]=I[-12174]or De(-12174,58529,126030),{[24430]=63,[41523]=Va(Q[41523],134),[8738]=Va(Q[8738],179),[57350]=0}
                        end
                    elseif Sa>13709 then
                        if H>53 then
                            Sa=I[566]or De(566,10284,78898)
                            continue
                        else
                            Sa=I[-26965]or De(-26965,39546,11601)
                            continue
                        end
                        Sa=I[2849]or De(2849,27371,92548)
                    else
                        if Q[57350]==102 then
                            Sa=I[19939]or De(19939,54548,56747)
                            continue
                        elseif Q[57350]==156 then
                            Sa=I[-27241]or De(-27241,516,8969)
                            continue
                        else
                            Sa=I[17493]or De(17493,46669,62107)
                            continue
                        end
                        Sa=I[4901]or De(4901,25382,90611)
                    end
                elseif Sa>=50961 then
                    if Sa<56807 then
                        if Sa<53842 then
                            if Sa>=52228 then
                                if Sa>=53158 then
                                    if Sa>=53203 then
                                        if Sa<=53203 then
                                            if(Mc>=0 and td>T)or((Mc<0 or Mc~=Mc)and td<T)then
                                                Sa=I[18110]or De(18110,8282,73815)
                                            else
                                                Sa=53854
                                            end
                                        else
                                            Sa,t_[44767]=I[-6635]or De(-6635,49064,14245),ya
                                        end
                                    else
                                        if H>222 then
                                            Sa=I[-31868]or De(-31868,52604,107173)
                                            continue
                                        else
                                            Sa=I[-13476]or De(-13476,34430,4652)
                                            continue
                                        end
                                        Sa=I[7981]or De(7981,13633,81710)
                                    end
                                elseif Sa<=52228 then
                                    if H>89 then
                                        Sa=I[23436]or De(23436,48346,21171)
                                        continue
                                    else
                                        Sa=I[22858]or De(22858,34400,111981)
                                        continue
                                    end
                                    Sa=I[-5517]or De(-5517,63671,129120)
                                else
                                    if H>101 then
                                        Sa=I[24097]or De(24097,53508,28842)
                                        continue
                                    else
                                        Sa=I[12565]or De(12565,36027,29331)
                                        continue
                                    end
                                    Sa=I[21175]or De(21175,30234,94743)
                                end
                            elseif Sa<=51242 then
                                if Sa>51100 then
                                    Id(Jb[58772],1,t_,va,r_);
                                    Sa=I[-28844]or De(-28844,8427,74628)
                                elseif Sa>50961 then
                                    t_,pd,ya=ac
                                    if f_(t_)~='function'then
                                        Sa=I[4796]or De(4796,54629,24104)
                                        continue
                                    end
                                    Sa=I[-11428]or De(-11428,62585,111151)
                                else
                                    Ra-=1;
                                    ia[Ra],Sa={[24430]=208,[41523]=Va(Q[41523],119),[8738]=Va(Q[8738],158),[57350]=0},I[19619]or De(19619,7373,116650)
                                end
                            elseif Sa>51582 then
                                Ra-=1;
                                ia[Ra],Sa={[24430]=107,[41523]=Va(Q[41523],125),[8738]=Va(Q[8738],124),[57350]=0},I[18088]or De(18088,37521,20894)
                            else
                                D=D+T;
                                Mc=D
                                if D~=D then
                                    Sa=I[13633]or De(13633,3126,109311)
                                else
                                    Sa=I[4766]or De(4766,46797,50735)
                                end
                            end
                        elseif Sa<55399 then
                            if Sa>=54602 then
                                if Sa>54763 then
                                    T=T+Hc;
                                    Z=T
                                    if T~=T then
                                        Sa=I[-18114]or De(-18114,26220,129735)
                                    else
                                        Sa=I[18489]or De(18489,56391,15485)
                                    end
                                elseif Sa<=54602 then
                                    va,t_,pd=Q[22278],Q[40226],r_[Q[41523]]
                                    if(pd==va)~=t_ then
                                        Sa=I[8860]or De(8860,24664,77604)
                                        continue
                                    else
                                        Sa=I[28129]or De(28129,35566,60590)
                                        continue
                                    end
                                    Sa=I[-31384]or De(-31384,49705,100038)
                                else
                                    Z=T
                                    if Mc~=Mc then
                                        Sa=I[14541]or De(14541,12087,127191)
                                    else
                                        Sa=I[29695]or De(29695,24610,83025)
                                    end
                                end
                            elseif Sa<=53842 then
                                ya,La=t_[22278],Q[22278];
                                La='\149\27Z\23Q'..La;
                                D='';
                                Sa,td,Mc,T=48390,0,1,#ya-1
                            else
                                Z=ia[Ra];
                                Ra+=1;
                                Ke=Z[41523]
                                if Ke==0 then
                                    Sa=I[19756]or De(19756,14122,119500)
                                    continue
                                elseif Ke==1 then
                                    Sa=I[-3741]or De(-3741,4649,5681)
                                    continue
                                elseif Ke==2 then
                                    Sa=I[6084]or De(6084,24385,28272)
                                    continue
                                end
                                Sa=I[-19212]or De(-19212,40298,14044)
                            end
                        elseif Sa<56145 then
                            if Sa<=55845 then
                                if Sa>55399 then
                                    Sa,t_[5446]=I[-17601]or De(-17601,56229,11182),La
                                else
                                    va=S[Q[8738]+1];
                                    r_[Q[41523]],Sa=va[3][va[1]],I[-10544]or De(-10544,37296,21345)
                                end
                            else
                                va,t_=nil,Va(Q[39234],5857);
                                va=if t_<32768 then t_ else t_-65536;
                                pd=va;
                                ya=ka[pd+1];
                                La=ya[49709];
                                D=Ld(La);
                                r_[Va(Q[41523],219)]=da(ya,D);
                                Mc,td,T,Sa=1,1,La,I[11689]or De(11689,39871,3130)
                            end
                        elseif Sa>=56316 then
                            if Sa<=56316 then
                                if H>213 then
                                    Sa=I[5348]or De(5348,54885,16256)
                                    continue
                                else
                                    Sa=I[14469]or De(14469,19692,130256)
                                    continue
                                end
                                Sa=I[-3526]or De(-3526,11979,71076)
                            else
                                if(Z>=0 and Mc>Hc)or((Z<0 or Z~=Z)and Mc<Hc)then
                                    Sa=I[21411]or De(21411,48493,29153)
                                else
                                    Sa=I[21657]or De(21657,25262,112575)
                                end
                            end
                        else
                            Ra+=1;
                            Sa=I[8476]or De(8476,52176,100545)
                        end
                    elseif Sa>60666 then
                        if Sa>63082 then
                            if Sa>65053 then
                                if(Hc>=0 and T>Mc)or((Hc<0 or Hc~=Hc)and T<Mc)then
                                    Sa=I[-17527]or De(-17527,51495,22183)
                                else
                                    Sa=I[6150]or De(6150,15675,24604)
                                end
                            elseif Sa<=63742 then
                                if Sa<=63277 then
                                    if H>79 then
                                        Sa=I[-9333]or De(-9333,31172,106958)
                                        continue
                                    else
                                        Sa=I[-23754]or De(-23754,96,24412)
                                        continue
                                    end
                                    Sa=I[-31792]or De(-31792,48021,112770)
                                else
                                    cd(D);
                                    Sa,we[La]=I[20414]or De(20414,54882,896),nil
                                end
                            else
                                La,D=t_(pd,ya);
                                ya=La
                                if ya==nil then
                                    Sa=14989
                                else
                                    Sa=18646
                                end
                            end
                        elseif Sa<=61802 then
                            if Sa<=61631 then
                                if Sa<=61551 then
                                    if Sa<=60784 then
                                        ya=r_[va];
                                        D,Sa,La,td=t_,I[-6139]or De(-6139,8223,2837),va+1,1
                                    else
                                        if H>24 then
                                            Sa=I[-18686]or De(-18686,24161,105173)
                                            continue
                                        else
                                            Sa=I[-2804]or De(-2804,29728,73214)
                                            continue
                                        end
                                        Sa=I[23024]or De(23024,1782,118179)
                                    end
                                else
                                    if H>238 then
                                        Sa=I[-30339]or De(-30339,10017,81861)
                                        continue
                                    else
                                        Sa=I[32424]or De(32424,14812,22941)
                                        continue
                                    end
                                    Sa=I[19311]or De(19311,17629,69594)
                                end
                            else
                                if H>189 then
                                    Sa=I[14783]or De(14783,8348,128208)
                                    continue
                                else
                                    Sa=I[-3723]or De(-3723,44288,58527)
                                    continue
                                end
                                Sa=I[-29327]or De(-29327,20920,70521)
                            end
                        elseif Sa>61831 then
                            Q=ia[Ra];
                            H,Sa=Q[24430],I[6759]or De(6759,45714,56324)
                        else
                            pd,Sa=D,I[-12818]or De(-12818,33001,57258)
                            continue
                        end
                    elseif Sa>=58197 then
                        if Sa<60270 then
                            if Sa<=59030 then
                                if Sa>58197 then
                                    va,t_=Q[41523],Q[22278];
                                    na=va+6;
                                    pd,ya=r_[va],nil;
                                    ya=ee(pd)=='function'
                                    if ya then
                                        Sa=I[20125]or De(20125,19798,115486)
                                        continue
                                    else
                                        Sa=I[-14156]or De(-14156,58810,32394)
                                        continue
                                    end
                                    Sa=I[5817]or De(5817,26588,93405)
                                else
                                    if not Bd then
                                        Sa=I[-2385]or De(-2385,16608,97444)
                                        continue
                                    end
                                    Sa=18652
                                end
                            else
                                va,t_=Q[41523],Q[8738];
                                pd,ya=_a(m,r_,'',va,t_)
                                if not pd then
                                    Sa=I[-28972]or De(-28972,45424,107866)
                                    continue
                                end
                                Sa=I[-11100]or De(-11100,59931,18705)
                            end
                        elseif Sa>=60593 then
                            if Sa<=60593 then
                                if H>84 then
                                    Sa=I[-21864]or De(-21864,30908,96381)
                                    continue
                                else
                                    Sa=I[-19823]or De(-19823,10281,66750)
                                    continue
                                end
                                Sa=I[-18134]or De(-18134,32270,97003)
                            else
                                Sa,r_[Q[41523]]=I[19868]or De(19868,34415,16904),r_[Q[8738]]
                            end
                        else
                            Z=T
                            if Mc~=Mc then
                                Sa=I[-28676]or De(-28676,9913,113200)
                            else
                                Sa=I[-15072]or De(-15072,44001,49371)
                            end
                        end
                    elseif Sa>57142 then
                        if Sa>57852 then
                            Mc=D
                            if td~=td then
                                Sa=I[22407]or De(22407,64497,24250)
                            else
                                Sa=I[23335]or De(23335,15966,20188)
                            end
                        else
                            Sa,ya=I[5137]or De(5137,33460,14030),na-va+1
                        end
                    elseif Sa<57045 then
                        if Sa>56807 then
                            if Q[57350]==62 then
                                Sa=I[15102]or De(15102,44801,26097)
                                continue
                            elseif Q[57350]==103 then
                                Sa=I[-26275]or De(-26275,57740,102185)
                                continue
                            else
                                Sa=I[-10985]or De(-10985,43679,20243)
                                continue
                            end
                            Sa=I[-3645]or De(-3645,63829,129858)
                        else
                            t_,pd,ya=va.__iter(t_);
                            Sa=I[29802]or De(29802,24732,74162)
                        end
                    elseif Sa>57045 then
                        t_,pd,ya=va.__iter(t_);
                        Sa=I[-6573]or De(-6573,9675,65644)
                    else
                        Sa,td=I[15850]or De(15850,45743,17142),td..ua(Va(Ge(La,Z+1),Ge(D,Z%#D+1)))
                    end
                elseif Sa>43074 then
                    if Sa>47069 then
                        if Sa<49614 then
                            if Sa<48100 then
                                if Sa<=47153 then
                                    if H>115 then
                                        Sa=I[31913]or De(31913,67,102231)
                                        continue
                                    else
                                        Sa=I[-17976]or De(-17976,15803,117113)
                                        continue
                                    end
                                    Sa=I[28240]or De(28240,23846,67571)
                                else
                                    va,t_,pd=Va(Q[8738],197),Va(Q[57350],46),Va(Q[41523],35);
                                    ya,La=t_==0 and na-va or t_-1,r_[va];
                                    D,td=pb(La(We(r_,va+1,va+ya)))
                                    if pd==0 then
                                        Sa=I[13980]or De(13980,13463,111034)
                                        continue
                                    else
                                        Sa=I[14277]or De(14277,14785,20948)
                                        continue
                                    end
                                    Sa=I[-30277]or De(-30277,24944,127439)
                                end
                            elseif Sa<=48154 then
                                if Sa>48100 then
                                    td=td+Mc;
                                    Hc=td
                                    if td~=td then
                                        Sa=I[18217]or De(18217,950,79541)
                                    else
                                        Sa=I[-18491]or De(-18491,63020,5114)
                                    end
                                else
                                    va,t_,pd=Q[22278],Q[40226],r_[Q[41523]]
                                    if(pd==va)~=t_ then
                                        Sa=I[-17236]or De(-17236,11245,110816)
                                        continue
                                    else
                                        Sa=I[15039]or De(15039,12048,77085)
                                        continue
                                    end
                                    Sa=I[17753]or De(17753,35123,19452)
                                end
                            else
                                Hc=td
                                if T~=T then
                                    Sa=I[-30830]or De(-30830,51369,129432)
                                else
                                    Sa=I[-20144]or De(-20144,13444,23682)
                                end
                            end
                        elseif Sa>=49764 then
                            if Sa<49961 then
                                if H>11 then
                                    Sa=I[-19925]or De(-19925,41823,113222)
                                    continue
                                else
                                    Sa=I[-23773]or De(-23773,43545,52237)
                                    continue
                                end
                                Sa=I[-22546]or De(-22546,35697,18750)
                            elseif Sa<=49961 then
                                Sa,r_[Q[41523]]=I[32069]or De(32069,53378,23369),pd
                            else
                                we[Q]=nil;
                                Ra+=1;
                                Sa=I[20169]or De(20169,43806,108827)
                            end
                        elseif Sa>49614 then
                            e_={[2]=r_[Z[8738]],[1]=2};
                            e_[3]=e_;
                            Sa,D[Hc]=I[-9149]or De(-9149,39482,51596),e_
                        else
                            Sa,r_[Q[41523]]=I[-4062]or De(-4062,1275,118708),nil
                        end
                    elseif Sa<44318 then
                        if Sa>=43144 then
                            if Sa>=43490 then
                                if Sa<=43490 then
                                    pd,ya=va[22278],Q[22278];
                                    ya='\149\27Z\23Q'..ya;
                                    La='';
                                    D,Sa,T,td=0,58027,1,#pd-1
                                else
                                    Ra+=1;
                                    Sa=I[-5102]or De(-5102,58145,123342)
                                end
                            else
                                na,Ra,ac,Sa,we,Bd=-1,1,Fe({},{__mode='vs'}),I[-18818]or De(-18818,49043,107676),Fe({},{__mode='ks'}),false
                            end
                        elseif Sa>43102 then
                            Ra+=Q[46391];
                            Sa=I[-28064]or De(-28064,29036,94989)
                        else
                            va,t_=Q[18964],Q[22278];
                            pd=nb[t_]or Pc[6627][t_]
                            if va==1 then
                                Sa=I[24922]or De(24922,12999,119172)
                                continue
                            elseif va==2 then
                                Sa=I[-8179]or De(-8179,15463,123856)
                                continue
                            elseif va==3 then
                                Sa=I[9742]or De(9742,6156,22853)
                                continue
                            end
                            Sa=44079
                        end
                    elseif Sa>46078 then
                        if Sa>46888 then
                            if H>243 then
                                Sa=I[25452]or De(25452,27774,70846)
                                continue
                            else
                                Sa=I[-11905]or De(-11905,18609,97992)
                                continue
                            end
                            Sa=I[-31550]or De(-31550,64829,124922)
                        else
                            va=Q[22278];
                            r_[Q[8738]]=r_[Q[41523]][va];
                            Ra+=1;
                            Sa=I[-30351]or De(-30351,31350,97827)
                        end
                    elseif Sa>=45079 then
                        if Sa<=45079 then
                            Hc=td
                            if T~=T then
                                Sa=I[-6200]or De(-6200,17650,69567)
                            else
                                Sa=53203
                            end
                        else
                            if(td>=0 and La>D)or((td<0 or td~=td)and La<D)then
                                Sa=I[541]or De(541,29529,118867)
                            else
                                Sa=I[-23942]or De(-23942,39299,61242)
                            end
                        end
                    elseif Sa<=44318 then
                        r_[Q[41523]],Sa=Q[22278],I[10591]or De(10591,40706,17903)
                    else
                        r_[va+2]=r_[va+3];
                        Ra+=Q[46391];
                        Sa=I[-27232]or De(-27232,5283,121932)
                    end
                elseif Sa<=40341 then
                    if Sa<=38186 then
                        if Sa<36975 then
                            if Sa<=35437 then
                                if Sa<=34858 then
                                    Sa,ya=20984,td
                                    continue
                                else
                                    if H>63 then
                                        Sa=I[28245]or De(28245,37755,30917)
                                        continue
                                    else
                                        Sa=I[-31321]or De(-31321,23189,101416)
                                        continue
                                    end
                                    Sa=I[-16250]or De(-16250,43447,109408)
                                end
                            else
                                if H>190 then
                                    Sa=I[1014]or De(1014,15575,109009)
                                    continue
                                else
                                    Sa=I[27064]or De(27064,36060,2390)
                                    continue
                                end
                                Sa=I[27144]or De(27144,35431,20016)
                            end
                        elseif Sa<37736 then
                            if Sa>36975 then
                                Ra-=1;
                                Sa,ia[Ra]=I[-8313]or De(-8313,29593,94358),{[24430]=190,[41523]=Va(Q[41523],52),[8738]=Va(Q[8738],48),[57350]=0}
                            else
                                if H>52 then
                                    Sa=I[-23528]or De(-23528,1227,28749)
                                    continue
                                else
                                    Sa=I[-6899]or De(-6899,19513,76931)
                                    continue
                                end
                                Sa=I[-13840]or De(-13840,4756,119173)
                            end
                        elseif Sa>37736 then
                            Sa,La=I[-13791]or De(-13791,10087,80608),T
                            continue
                        else
                            if H>208 then
                                Sa=I[-25684]or De(-25684,5547,120557)
                                continue
                            else
                                Sa=I[21369]or De(21369,20574,67150)
                                continue
                            end
                            Sa=I[-15700]or De(-15700,13859,78540)
                        end
                    elseif Sa>=39374 then
                        if Sa<39614 then
                            Ra+=1;
                            Sa=I[1154]or De(1154,33930,19559)
                        elseif Sa<=39614 then
                            T=T+Hc;
                            Z=T
                            if T~=T then
                                Sa=I[13752]or De(13752,45391,7711)
                            else
                                Sa=65463
                            end
                        else
                            t_=Jb[23874];
                            na,Sa=va+t_-1,I[-18015]or De(-18015,14300,121776)
                        end
                    elseif Sa<=38674 then
                        La={pd(r_[va+1],r_[va+2])};
                        Id(La,1,t_,va+3,r_)
                        if r_[va+3]~=nil then
                            Sa=I[-13331]or De(-13331,34690,30460)
                            continue
                        else
                            Sa=I[-28144]or De(-28144,44875,25279)
                            continue
                        end
                        Sa=I[25645]or De(25645,60264,125193)
                    else
                        if D[1]>=Q[41523]then
                            Sa=I[6289]or De(6289,50438,56298)
                            continue
                        end
                        Sa=I[24906]or De(24906,3052,102050)
                    end
                elseif Sa>=42091 then
                    if Sa>42895 then
                        if Sa<=42997 then
                            r_[Q[41523]],Sa=pd[Q[44767]],I[28494]or De(28494,22929,115320)
                        else
                            Ra+=Q[46391];
                            Sa=I[1582]or De(1582,10966,76227)
                        end
                    elseif Sa>=42185 then
                        if Sa>42185 then
                            t_,pd,ya=va.__iter(t_);
                            Sa=I[-18748]or De(-18748,8330,102904)
                        else
                            Ra-=1;
                            Sa,ia[Ra]=I[-26470]or De(-26470,16662,66307),{[24430]=210,[41523]=Va(Q[41523],87),[8738]=Va(Q[8738],181),[57350]=0}
                        end
                    else
                        va=ob(t_)
                        if va~=nil and va.__iter~=nil then
                            Sa=I[20793]or De(20793,61927,128034)
                            continue
                        elseif f_(t_)=='table'then
                            Sa=I[-6481]or De(-6481,7573,30162)
                            continue
                        end
                        Sa=I[-6915]or De(-6915,41467,24749)
                    end
                elseif Sa>=40616 then
                    if Sa>=41324 then
                        if Sa>41324 then
                            if H>251 then
                                Sa=I[-23554]or De(-23554,60052,125636)
                                continue
                            else
                                Sa=I[-24994]or De(-24994,34004,51)
                                continue
                            end
                            Sa=I[-4693]or De(-4693,24525,66730)
                        else
                            La,D=t_(pd,ya);
                            ya=La
                            if ya==nil then
                                Sa=I[-31348]or De(-31348,62196,127397)
                            else
                                Sa=39158
                            end
                        end
                    else
                        t_,pd,ya=k(t_);
                        Sa=I[-11047]or De(-11047,46207,11661)
                    end
                elseif Sa>40400 then
                    Sa,va,t_=I[-27515]or De(-27515,65320,107380),ia[Ra],nil
                else
                    if Q[57350]==53 then
                        Sa=I[-5725]or De(-5725,64865,14757)
                        continue
                    elseif Q[57350]==58 then
                        Sa=I[-28341]or De(-28341,58164,100666)
                        continue
                    elseif Q[57350]==103 then
                        Sa=I[-1463]or De(-1463,33213,43086)
                        continue
                    elseif Q[57350]==232 then
                        Sa=I[20071]or De(20071,13665,27031)
                        continue
                    else
                        Sa=I[25041]or De(25041,4360,116108)
                        continue
                    end
                    Sa=I[13049]or De(13049,33576,16841)
                end
            until Sa==5306
        end
        return function(...)
            local de,he,ca,za,Ma,Oa,Jd,Ba,Mb,Te,gc;
            Ba,Te=function(Pa,Gb,mb)
                Te[mb]=Ve(Pa,41888)-Ve(Gb,50361)
                return Te[mb]
            end,{};
            ca=Te[-31515]or Ba(50509,50274,-31515)
            repeat
                if ca>40930 then
                    if ca>48211 then
                        return Wa(Oa,0)
                    elseif ca>44320 then
                        Ma,za=pb(_a(yb,gc,pa[29516],pa[17277],he))
                        if Ma[1]then
                            ca=Te[-19016]or Ba(32658,23135,-19016)
                            continue
                        else
                            ca=Te[-12497]or Ba(22758,6104,-12497)
                            continue
                        end
                        ca=20377
                    else
                        ca,Oa=Te[9211]or Ba(73806,30029,9211),ee(Oa)
                    end
                elseif ca<20377 then
                    if ca<=10213 then
                        Oa,Jd=Ma[2],nil;
                        Mb=Oa;
                        Jd=ee(Mb)=='string'
                        if Jd==false then
                            ca=Te[22616]or Ba(26884,55613,22616)
                            continue
                        end
                        ca=Te[-2450]or Ba(81352,2263,-2450)
                    else
                        return We(Ma,2,za)
                    end
                elseif ca>=26130 then
                    if ca>26130 then
                        Ma,za=pa[31467]+1,de.n-pa[31467];
                        he[23874]=za;
                        Id(de,Ma,Ma+za-1,1,he[58772]);
                        ca=Te[20933]or Ba(68586,12110,20933)
                    else
                        de,gc,he=Ud(...),Ld(pa[64171]),{[58772]={},[23874]=0};
                        Id(de,1,pa[31467],0,gc)
                        if pa[31467]<de.n then
                            ca=Te[1712]or Ba(441,50830,1712)
                            continue
                        end
                        ca=48211
                    end
                else
                    ca=Te[-468]or Ba(75082,4015,-468)
                    continue
                end
            until ca==48084
        end
    end
    return da(Qb,lc)
end)
local ae;
ae,s_={[0]=0},function()
    ae[0]=ae[0]+1
    return{[3]=ae,[1]=ae[0]}
end;
c=zb
return(function()
    local Ic,zc,Da,Gc;
    zc={[2]=c,[1]=2};
    zc[3]=zc;
    Da={[2]=Kd,[1]=2};
    Da[3]=Da;
    Gc={[1]=2,[2]=Vb};
    Gc[3]=Gc;
    Ic={[1]=2,[2]=z};
    Ic[3]=Ic
    return c(gb'GhIWkbWByhjZbyZN2W4nTTobuCqOGrgq9Tl8BuwYuirBGLgq9Tl9B9luJk3ZbSdN2WwkTTocuCqOHLkqOh24Ko4duirZaSVN2SuIFPU7egX1O3sE9Tt+BPU5fwTsGLsqwRi4KvU5fAfZLokUE30hTPU7fwSVTQ1Wi7WByhgSibyByhhqAEgF4pTCcWHSnttNlLHt3nxmuMQ0GYrwNh1fl4gj0zE7OabDvdEJ0Xx70Gz+6v8V5MWzJF/C5HivBJhDVt/n1NyEQH6dPePdox8Wr0N9dABSPUayY8Mbr0RmIL/Twlmu0+JVMxa1ifmUYLs8YDFtjLlpZkF8+8FYTMqntpG9tZxLuhC1xvUZ0d4m7uxdhU6OmvXLTvC7oxaWEpxHrdYozxS8cpm96wHAXy+9G9g7APhjIcopSJw8MQgEcJTiawbUMEOY29mqYXZkFVa3sSffo/KD6B5QcbPe8VBT/7lHQ15nDYRza92j+NY3NxJwaRqxgi3oGQPaw7PDWWXeAlXm2T/WSZ15bDXvfYkV1iQZRBOHuxW1O6Na0MRkBm8zgnDedpuLaJtxzVzF3ZahSDMcCKc6JiPq1nx0KWGH+0aWDdR0JPhERRHKSrMkRLOS6cMYD+P5mxh6Y7XnFrVyhTHT6y8ljVUpIRUIzmWxcZ8NFcLj7XzBOl9JjVp6CIDyaS5IfGTzZJfFnV5vd68wSueJaWzKjT6Cj5yAVoUGrAdYNErTw8SR9pbW3rMWtr7jlMoIwSlP32ccM4BKIHdEspL0eg3RE8CZB6c8L9wYV3fmWMyLxBhEw/4h5xdZL4tMh8PPpHPRSWwlp6CXrRHrOsRif1xqbI0+7OdHTFuOeqZU92fefRR9YzsjO6xh4kLGS3fPj6Yj/gzom0xHDiQB/szTM9CWBf0KDizru/7DR5yH8pQvTvSHqi1KRovmmOKHEuDLZg13eAlnhwung3jBmtVfYJ7PigYVrX/uWzpO1CeycOyJn0YVRO04mMmXpi3ASACm32kmdwoh84Uu4iVb6yYdRVs0bQnq8pZXNLFa/q+3ZxbxnytNhCW7NhO5JVSWcUieZ5p3P/Odew6JUORreKF3bZ9iVd9lvth7eYrke95EpWvH3I2pcWAM6yBVX212AdzTHtb6cDu1gCnPadlwP8laDkPLSiZhDDozbnFJjvzTwjv4RRYYMnIhO4gqeyyY9qwdGN3q4lHgjl0bBvyZU69U5I2LAvdUJxLwJ7jzW/CdqWlu8fZ5Sv0xSKcehyNjHS91P0dI5iCCMcAG1amtjaN4/v3UdRa77PhW+g4vR/l3qWqqHU2zfK7Dusol69bbQ74Y1xpunz0AQ+BEwBsOzRy8qJ0b0EihASiOwIWJIozCxDqg5j+jL5FYgggu6QGRZTgduBn7t5hfb24Aup+ub/n+luzULF9MiAbr3OB9q131FYJKp7fgM9P1GgMuE/cP8TOO/t0CRnNoa/KN8EClBZ6KbdcV1ppKNta+xvKpRe+cjEOMhPP4R8/uCto1x7SMetM3R/XgbAFUZsiWrjDU4DK7GNPbXG+nl7k8YPScX+s9SPd43J6mYnWtE2/AFp4j+WAzHh/nfdztiogRwyW0AtdUepDJGbxUxwbubwb81fqmMY41g7AlnCq0C9H4lBY8Fqfy2+egS3/2P2aYfJC8HI7Q+bpBSSJvklSlG+dRvYPucsGZQykJ+a/I1pE5tuTN8Es1ObdZEo+zgcoYPrhWbjHjZRxQCncyy5GYxJoeu0Qvf+d2DyW7y+5aEgsoNin1ZoYS50kb4NP/q7sThhSgLi/m32F+R3hgBrKNaw58o4MYU3AuwwvFKQKUYpOE/M+S66QMO7UGkO9joDYNc2PUAFKrJONrXFLmwIh0lLnQfG2NhxM/RqQTNh2pbsaSkakRhA/OB7PHqK1h4so6k5F68Jz4OAOA/akJ/zwtD8ZxGHbIOjKgRhIM3hXN4KeLVMDSrm1af2wY5nfY3/e4k++bMsM5ZKUfugCnmHv8MkFZGQ8d5IVvhOzucYsEsSD5WBFd6nFXDVd/oko+vwsOAF2nv4r9HkM/rp5aQcRAHJefoOZ9EJb/Dd+oObbiKvtxpYI4TZMXsLqKjPVaYFJyv8Kii5aQd6bl4vXNlIvqJmn+U9xGbRGmq7V9DFuINX+rIdBUUUl2JyZHf4CwQ2osoMVkdLksLfOrMx4B357ZxluGQwwJzjpmvCyXfpIi5DyW2CoVdTBGkZ/APa1YrSoQ8eDtomdrc7UW4Hcemj6KntOzfg/XQoj9HLvfJZood/ecru7yWVFOcseOhehaNq7lO0MyDsCon32BW0ja/E1Km8+7rYi8sZ6g1IkiUBQpuA/b7STqs3OozE6FreNz/vWEOQYMoZbXjVKMS7vCxWH5+l7YQZRYQU1PbVL/78mV5Y9z7fvyFN9IbOysjUF4pGe9YPOu50JixkCY3EXCBpP0zPOUCruZndFUUg228AeTpM+QZmk7bIu4+ImLgB4RkAixB+nrwpy0PafpnWzBvDWdCARo5Y8gf7FVSI2QLmwycDLwxGyalDHTnK5Lye5+RjHo7JyDOdo+weTFBsWEEOPBsxwQc0LAZcXT4lzTtHknhLAOgEwUChHAGUstFqirpQGI/gqE97oijewp0ncfL+yrkq6MbySLvsJD+5ZkADdq6XznMY0lAm3HNHmigzDLTSBT/aIV6v7m+cvvlwvnJfTFFZMFOVYV8IxrTvpbF5s18f3ZFn/xOhuOdPbPvdHrvOoNedYSgbWByhgBqRCF94HNvKJihrkSz7GByhggQ7t5LaTS9b4/9WZWm/vEVNiSaF2jRigyCRIpk1OnIDV+Ym9mx9GMdusb7QuuDT/hwQSQxSRnWrz19HRIMlOJPKlV2sD3fRFdgMQHMvUsaqeaJ1DcfpmVS9vhhCwXbUgQbKF3gJ9iFe8lmZAKQ517cvYhSP3gnbnuBZ9aBQQ/fsmV5iTnXekYQzlkdaD12i7uCIlpCK2XhTifJ5keUyoxtxQLP1Xf5g4shBUOQ3/f2ZG3tSUg51i1goaz/NA78sC5rFt0G618ha+V9WzeYwfHevmnwhNP4NVGZV3hTRmcz0E2etDUVzQikHStmz0P9KQp+tmYugMn9WLvzaYUqXF8TwRo5YnVNaESaJ04DZttCBvRaJcrOBcQdG5QwDz7zIRRWqtY7rw+iip4fkeojXCzX4n8ZrRhJrG5l6jy1ApNAeju08/F5hqtNPu+kQyCC+EvCHS0pGllB6pLxPmnI6yK2F8tavhk1ZTnsi653vpuXzN+k3IVdHa0oYY3BoPscWecfG41cQzLC0IkehtYuYH9fR1HPurzYhyWp160clnnAYxTeNJw99SU71RPGWDJMLdYeQbHOyxl500gtivq+zbQivhQl5qnsUkEQKbZ6FujNs/Je+Lo8uj5Y4nNwTeIk1trB12/MfGkNCmW+G3TcM0FFlrnpGzOj5mpmPWEeYpUb+clggQhIO+dC5AlhWyj4NNxFpPPe3bD1NMkLd7Bnoav9i7vzb6TPouQBIuDcMhOv1FjG0jIL8D76dcPVodP/FDodhKMtoHKGOzpFd6NquuKMo5OPIbB/98UX0M8RN+qFWq7hMnzpo1Rpd3VoMOZZCSy1rdqfRDdpKpBzL5hhS3Q3TcIBoCzrwZ0r9RUtBueuASDnytbfwqUn6RFM3TYsoRt87lQg+MzfKSqWWl+VmuTlFqnQuNyv+9s+cz97eG4dQKkgHWctRUuf/cWZWlb80uMVlSw4djEc0PYMAtC/8JI1SKQrN0crUckz8tbSoMP0tVI+b5chm7zOYw/jVaew2QJTlp4tv0mZg/oFfw5/cpP3+LjHV/UJl+/3auqvBSGtvU8lgMl39emONIFHW24pcqB/M8mMLdcDxQ3MGEw7pwBTdI7LtSUGjfdfdXIQtJ5N/JcKgWeciahZmWkDxcXSHV+SnbLTmwVAsk3UkckNGf0EQtRQIWT9uRZ6u0k5zhFOPhuqqJI76eVIlmPXIpCkLPtC8OxB818DdIxFfISAxzL+Scbi76uY6QcyqvTHT1wPRUujnXpqNJz8BpGWtjtAxU2GZSAzAb7XWwSi7WByhgzKQzJG1yNtYHKGA==',{[2]=Da,[1]=zc,[3]=Gc,[4]=Ic})
end)()(...)