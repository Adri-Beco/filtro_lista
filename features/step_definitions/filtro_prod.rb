
templates_page = Templates.new 

Dado('que acessei o site com uma página de presentes virtuais no <template>') do
  file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/lista_templates.yml"))
  file['templates'].each do |template|
    page.driver.browser.manage.window.resize_to(1280,768)
    templates_page.load(template_query: {'template': template['name']})

        find(".store__filters")

    page.execute_script "window.scrollBy(0,300)"
        find('div:first-child div:first-child div:nth-child(3) button').click

        find('#categories').click
        find('#categories >div > ul > li:nth-child(2)').select_option
        sleep 3

    expect(page).to have_content 'Ordenar'
      screenshot = "templates/screenshots/#{template['name']}.png"
      page.save_screenshot(screenshot)
      page.driver.browser.manage.window.resize_to(400,600) 
      screenshot = "templates/screenshots/#{template['name']}-mobile.png"
      page.save_screenshot(screenshot)
    end
end
  
# Quando('identifico os seletores na página') do
#     find(".store__filters")
# end
  
# Quando('clico em {string}') do |seletor|
#     page.execute_script "window.scrollBy(0,300)"
#     find('div:first-child div:first-child div:nth-child(3) button').click
# end
  
# Quando('clico em {string} para abrir as opçoes') do |string|
#     find('#categories').click
#     find('#categories >div > ul > li:nth-child(2)').select_option
#     sleep 3
# end
  
# Então('devo confirmar que sua interface está de acordo com o solicitado') do
#     expect(page).to have_content 'Ordenar'
#     screenshot = "templates/screenshots/#{nome_cenario}.png"
#     page.save_screenshot(screenshot)
# end 