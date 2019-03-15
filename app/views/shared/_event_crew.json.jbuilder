json.track event.track.try(:name)
json.event_classifiers event.event_classifiers.map(&:as_array).to_h
json.language event.language
json.recording_license event.recording_license
json.links event.links do |link|
  json.url url_for(link.url)
  json.title link.title
end
json.attachments event.event_attachments.is_public.each do |attachment|
  json.url attachment.attachment.variant(medium)
  json.title attachment.link_title
end
