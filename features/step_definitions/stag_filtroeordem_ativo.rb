templates_page = Templates.new 
#falta atualizar os elementos de staging
Dado('que acessei o site com o filtro e ordenaçao ativa no <template>') do
  file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/lista_templates.yml"))
  file['templates'].each do |template|
    page.driver.browser.manage.window.resize_to(1200,768)
    templates_page.load(template_query: {'template': template['name']})

        find(".store__filters")

    page.execute_script "window.scrollBy(0,300)"
        find('div:first-child div:first-child div:nth-child(3) button').click

        find('#categories').click
        find('#categories >div > ul > li:nth-child(2)').select_option
        sleep 3

    expect(page).to have_content 'Ordenar'
      screenshot = "templates/screenshots2/#{template['name']}.png"
      page.save_screenshot(screenshot)
      page.driver.browser.manage.window.resize_to(320,620) 
      screenshot = "templates/screenshots2/#{template['name']}-mobile.png"
      page.save_screenshot(screenshot)
      page.driver.browser.manage.window.resize_to(768,530) 
      screenshot = "templates/screenshots2/#{template['name']}-tablet.png"
      page.save_screenshot(screenshot)
      page.driver.browser.manage.window.resize_to(1148,620) 
      screenshot = "templates/screenshots2/#{template['name']}-deskmenor.png"
      page.save_screenshot(screenshot)
    end
end