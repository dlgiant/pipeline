Job.delete_all
# ...
Job.create!(title: 'Web designer',
  requirements:
    %{<ul><li>Adobe Ilustrator</li><li>Photoshop</li></ul>},
  company_logo_url: 'pipeline.jpg',
  description:
    %{This job entails 10hrs of work every week},
  expires: 8000.00,
  responsibilities: 
    %{<ul><li>create mock logos and logo for company</li><li>participate in the design of new images</li></ul>},
  salary: 0.00)
# ...
