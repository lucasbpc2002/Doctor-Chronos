/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
#region Colisão
  // COLISÃO HORIZONTAL 1
	var _move = (hspd) * max_hspd;

		hspd = _move * spd;
		vspd += grv;
		hspd = lerp(hspd, _move, spd);
    if (place_meeting(x + hspd, y, obj_floor2)) {
        var _hspd = sign(hspd);
        hspd = 0;
        while (!place_meeting(x + _hspd, y, obj_floor2)) {
            x += _hspd;
        }
        hspd = 0;
    }
    x += hspd;

    // COLISÃO VERTICAL 1
    if (place_meeting(x, y + vspd, obj_floor2)) {
        var _vspd = sign(vspd);
        while (!place_meeting(x, y + _vspd, obj_floor2)) {
            y += _vspd;
        }
        vspd = 0;

    }
    y += vspd;
#endregion

#region Ataque de luz 
#endregion
