admin_pw = "pVVFZm5j"
User.destroy_all
User.create!(email: 'admin@mathproject.ru', password: admin_pw, password_confirmation: admin_pw)

Page.destroy_all
Menu.destroy_all
h = Menu.create(name: 'Главное', text_slug: 'main').id
p = Page.create!(name: 'Проекты', content: 'проекты', fullpath: '/projects', menu_ids: [h])
Page.create!(name: 'Демо', fullpath: '/demo', menu_ids: [h])
Page.create!(name: 'Прайс лист', fullpath: '/price', menu_ids: [h])
Page.create!(name: 'Галерея', fullpath: '/galleries', menu_ids: [h])
c = Page.create!(name: 'О компании', fullpath: '/company', menu_ids: [h], content: 'О Компании')
Page.create!(name: 'Новости', fullpath: '/news', menu_ids: [h])
Page.create!(name: 'Контакты', fullpath: '/contacts', menu_ids: [h], content: 'Текст стр контакты')
Page.create!(name: 'Админка', fullpath: '/admin', menu_ids: [h])

MathObject.destroy_all
MathMap.destroy_all
nat =  MathObject.create! name: "Natural", js: '''
{
  random: function(){ return Math.random() * 35000;},
  eq: function(n){ return n == n; },
}
'''
nnext = MathMap.create! name: "NNext", js: '''
{
  run: function(n){return n + 1},
  tmpl: function(n){return "" + n + " \\mapsto " + (n+1);},
  example: function(){
    var n = new M.Natural();
    return M.NNext.tmpl(n);
  },
}
'''
nnext.objects.push nat
nnext.save!

nadd = MathMap.create! name: "NPlusN", js: '''
{
  run: function(n,m){return n + m;},
  tmpl: function(n,m){return "" + n + " + " + m " = " (m+n);}
  example: function(){ 
    var n = new M.Natural(); 
    var m = new M.Natural();
    return M.NplusN(m,n);
  },
}
'''
nadd.objects.push nat
nadd.save!
