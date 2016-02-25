--[[Ejemplo de mi primer juego programado con Löve engine en lenguaje lua
también será mi primera vez programando en este lenguaje por lo que se harán
comentarios de la sintaxis del lenguaje
Ejemplo: <--> se utiliza para hacer comentarios de una linea

<--[[> se utiliza para hacer comentarios de varias lineas
Ejemplo: "Este comentario completo
]]--

--[[Con esta función se carga todo lo necesario para el juego. Se ejecuta una
vez al inicial el juego]]--


function love.load()
	val = 0
	angle = 0
	love.window.setTitle("Mi primer Juego en lua")
	love.mouse.setVisible(false)--make default mouse invisible
	wMouse, hMouse = 20, 20
	startButton = love.graphics.newImage("startButton.png")
	wStartButton, hStartButton = startButton:getDimensions()
	windowWidth, windowHeigth, flag = love.window.getMode()
end
--[[Con esta función actualizamos la información del juego, en ella metemos los procesos y cálculos internos
 necesarios para el que el juego funcione. Se ejecuta contantemente para que el juego funcione de manera fluida]]--
function love.update(dt)
	setMouseColor()
	--PRUEBA DE ROTADOR
	--angle = angle + math.pi * dt
	end
--[[Con esta función pintamos los ementos necesarios para que nuestro juego se
 vea como queremos. Se ejecuta despues de love.update()]]--
function love.draw()
	love.graphics.print(val)
	love.graphics.setBackgroundColor(155,100,155)
	--love.graphics.draw(startButton,(windowWidth/2)-(wStartButton/2), (windowHeigth/2)-(hStartButton/2))
	setMouse(val)

	--PRUEBA DE ROTADOR

end
--[[Función que actualiza la imagen que sería el mouse en el juego]]
function setMouse(val)
	love.graphics.setColor(val, 100, 100)
	local xMouse, yMouse = love.mouse.getPosition()--get the position of the mouse
--	love.graphics.rotate(angle)
	love.graphics.rectangle("fill", xMouse, yMouse, wMouse, hMouse)--draw a rectangle that moveswhith the mouse

end
--[[Función que cambia el color del mouse aumenta si se presiona click izquierdo, disminuye si se presiona click
derecho]]
function setMouseColor()
	if (love.mouse.isDown(1)) then
		if (val == 255) then
			return
		else
			val = val+1
		end
	end
	if (love.mouse.isDown(2)) then
		if(val == 0) then
			return
		else
			val = val-1
		end
	end
end
