Google cloud
----------------

instance

    gcloud compute --project "project_name" ssh --zone "europe-west1-b" "instance_name"


copy files from and to your machine and an instance machine (change order to control)

    gcloud compute copy-files /local_dir/  instance_name:/tmp/ --project "project_name" --zone "europe-west1-b"
