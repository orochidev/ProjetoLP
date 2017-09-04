module comando;

import jsonizer.jsonize : jsonize, JsonizeMe;

class Comando{
  mixin JsonizeMe;
  @jsonize string id;
  @jsonize string resultado;
  @jsonize string descricao;
}
