#!/bin/bash
#
# Create the pages for https://github.com/uppsala-makerspace/umstutorial
#
# Usage:
#
#   ./scripts/create_pages_for_umstutorial.sh

if [[ "$PWD" =~ scripts$ ]]; then
    echo "FATAL ERROR."
    echo "Please run the script from the project root. "
    echo "Present working director: $PWD"
    echo " "
    echo "Tip: like this"
    echo " "
    echo "  ./scripts/create_pages_for_umstutorial.sh"
    echo " "
    exit 42
fi

# Download a script that is needed
wget -N --no-if-modified-since https://raw.githubusercontent.com/uppsala-makerspace/loerdagskurser/refs/heads/main/scripts/replace_rel_url_by_abs_url.R -O scripts/replace_rel_url_by_abs_url.R


# This will be the same for all generated pages
mkdocs_home_url="https://uppsala-makerspace.github.io/vevor_vinyl_cutter_to_t_shirt_manual"

# if [[ "this" == "nonsense" ]]; then # My favorite debug statement :-)

echo "========================================================================"
echo "= Steps"
echo "========================================================================"


echo "------------------------------------------------------------------------"
echo "- Steps: 1. Install Inkcut"
echo "------------------------------------------------------------------------" 
local_folder_rel_path="docs/steps/1_install_inkcut"
local_folder_input_file="${local_folder_rel_path}/README.md"
local_folder_prefix_output_file="${local_folder_rel_path}/generated"
mkdocs_page_url="${mkdocs_home_url}/steps/1_install_inkcut" # The page to link to; the rendered version of the source page
generated_en="${local_folder_prefix_output_file}_en.md"
#generated_sv="${local_folder_prefix_output_file}_sv.md"
# Rscript -e "ignored_output <- splimata::split_tabs(input_file_name = \"${local_folder_input_file}\", output_file_prefix = \"${local_folder_prefix_output_file}\")" || exit 42
cp ${local_folder_input_file} ${generated_en}
#cp ${local_folder_input_file} ${generated_sv}
sed -i '/^---$/,/^---$/d' ${generated_en}
#sed -i '/^---$/,/^---$/d' ${generated_sv}
#Rscript scripts/replace_rel_url_by_abs_url.R ${generated_en} ${mkdocs_page_url} || exit 42
#Rscript scripts/replace_rel_url_by_abs_url.R ${generated_sv} ${mkdocs_page_url} || exit 42
#sed -i 's/^# .*$/# Saturday courses overview/g' ${generated_en}
#sed -i 's/^# .*$/# Kurser hos Lördagskurser/g' ${generated_sv}

echo "------------------------------------------------------------------------"
echo "- Steps: 2. Install Inkcut"
echo "------------------------------------------------------------------------" 
local_folder_rel_path="docs/steps"
local_folder_input_file="${local_folder_rel_path}/2_setup_inkcut.md"
local_folder_prefix_output_file="${local_folder_rel_path}/2_setup_inkcut_generated"
mkdocs_page_url="${mkdocs_home_url}/steps/2_setup_inkcut" # The page to link to; the rendered version of the source page
generated_en="${local_folder_prefix_output_file}_en.md"
cp ${local_folder_input_file} ${generated_en}
sed -i '/^---$/,/^---$/d' ${generated_en}

echo "------------------------------------------------------------------------"
echo "- Steps: 3_get_t_shirts"
echo "------------------------------------------------------------------------" 
local_folder_rel_path="docs/steps"
local_folder_input_file="${local_folder_rel_path}/3_get_t_shirts.md"
local_folder_prefix_output_file="${local_folder_rel_path}/3_get_t_shirts_generated"
mkdocs_page_url="${mkdocs_home_url}/steps/3_get_t_shirts" # The page to link to; the rendered version of the source page
generated_en="${local_folder_prefix_output_file}_en.md"
cp ${local_folder_input_file} ${generated_en}
sed -i '/^---$/,/^---$/d' ${generated_en}

echo "------------------------------------------------------------------------"
echo "- Steps: 4_get_vinyl"
echo "------------------------------------------------------------------------" 
local_folder_rel_path="docs/steps"
local_folder_input_file="${local_folder_rel_path}/4_get_vinyl.md"
local_folder_prefix_output_file="${local_folder_rel_path}/4_get_vinyl_generated"
mkdocs_page_url="${mkdocs_home_url}/steps/4_get_vinyl" # The page to link to; the rendered version of the source page
generated_en="${local_folder_prefix_output_file}_en.md"
cp ${local_folder_input_file} ${generated_en}
sed -i '/^---$/,/^---$/d' ${generated_en}

echo "------------------------------------------------------------------------"
echo "- Steps: 5_connect_vinyl_cutter"
echo "------------------------------------------------------------------------" 
local_folder_rel_path="docs/steps"
local_folder_input_file="${local_folder_rel_path}/5_connect_vinyl_cutter.md"
local_folder_prefix_output_file="${local_folder_rel_path}/5_connect_vinyl_cutter_generated"
mkdocs_page_url="${mkdocs_home_url}/steps/5_connect_vinyl_cutter" # The page to link to; the rendered version of the source page
generated_en="${local_folder_prefix_output_file}_en.md"
cp ${local_folder_input_file} ${generated_en}
sed -i '/^---$/,/^---$/d' ${generated_en}

echo "------------------------------------------------------------------------"
echo "- Steps: 6_setup_vinyl_cutter"
echo "------------------------------------------------------------------------" 
local_folder_rel_path="docs/steps"
local_folder_input_file="${local_folder_rel_path}/6_setup_vinyl_cutter.md"
local_folder_prefix_output_file="${local_folder_rel_path}/6_setup_vinyl_cutter_generated"
mkdocs_page_url="${mkdocs_home_url}/steps/6_setup_vinyl_cutter" # The page to link to; the rendered version of the source page
generated_en="${local_folder_prefix_output_file}_en.md"
cp ${local_folder_input_file} ${generated_en}
sed -i '/^---$/,/^---$/d' ${generated_en}

echo "------------------------------------------------------------------------"
echo "- Steps: 7_place_foil"
echo "------------------------------------------------------------------------" 
local_folder_rel_path="docs/steps"
local_folder_input_file="${local_folder_rel_path}/7_place_foil.md"
local_folder_prefix_output_file="${local_folder_rel_path}/7_place_foil_generated"
mkdocs_page_url="${mkdocs_home_url}/steps/7_place_foil" # The page to link to; the rendered version of the source page
generated_en="${local_folder_prefix_output_file}_en.md"
cp ${local_folder_input_file} ${generated_en}
sed -i '/^---$/,/^---$/d' ${generated_en}

echo "------------------------------------------------------------------------"
echo "- Steps: 8_setup_inkcut_connection"
echo "------------------------------------------------------------------------" 
local_folder_rel_path="docs/steps"
local_folder_input_file="${local_folder_rel_path}/8_setup_inkcut_connection.md"
local_folder_prefix_output_file="${local_folder_rel_path}/8_setup_inkcut_connection_generated"
mkdocs_page_url="${mkdocs_home_url}/steps/8_setup_inkcut_connection" # The page to link to; the rendered version of the source page
generated_en="${local_folder_prefix_output_file}_en.md"
cp ${local_folder_input_file} ${generated_en}
sed -i '/^---$/,/^---$/d' ${generated_en}

echo "------------------------------------------------------------------------"
echo "- Steps: 9_use_inkcut"
echo "------------------------------------------------------------------------" 
local_folder_rel_path="docs/steps"
local_folder_input_file="${local_folder_rel_path}/9_use_inkcut.md"
local_folder_prefix_output_file="${local_folder_rel_path}/9_use_inkcut_generated"
mkdocs_page_url="${mkdocs_home_url}/steps/9_use_inkcut" # The page to link to; the rendered version of the source page
generated_en="${local_folder_prefix_output_file}_en.md"
cp ${local_folder_input_file} ${generated_en}
sed -i '/^---$/,/^---$/d' ${generated_en}

echo "------------------------------------------------------------------------"
echo "- Steps: 10_setup_heat_press"
echo "------------------------------------------------------------------------" 
local_folder_rel_path="docs/steps"
local_folder_input_file="${local_folder_rel_path}/10_setup_heat_press.md"
local_folder_prefix_output_file="${local_folder_rel_path}/10_setup_heat_press_generated"
mkdocs_page_url="${mkdocs_home_url}/steps/10_setup_heat_press" # The page to link to; the rendered version of the source page
generated_en="${local_folder_prefix_output_file}_en.md"
cp ${local_folder_input_file} ${generated_en}
sed -i '/^---$/,/^---$/d' ${generated_en}

echo "------------------------------------------------------------------------"
echo "- Steps: 11_peel_vinyl"
echo "------------------------------------------------------------------------" 
local_folder_rel_path="docs/steps"
local_folder_input_file="${local_folder_rel_path}/11_peel_vinyl.md"
local_folder_prefix_output_file="${local_folder_rel_path}/11_peel_vinyl_generated"
mkdocs_page_url="${mkdocs_home_url}/steps/11_peel_vinyl" # The page to link to; the rendered version of the source page
generated_en="${local_folder_prefix_output_file}_en.md"
cp ${local_folder_input_file} ${generated_en}
sed -i '/^---$/,/^---$/d' ${generated_en}

echo "------------------------------------------------------------------------"
echo "- Steps: 12_transfer_vinyl_to_t_shirt"
echo "------------------------------------------------------------------------" 
local_folder_rel_path="docs/steps"
local_folder_input_file="${local_folder_rel_path}/12_transfer_vinyl_to_t_shirt.md"
local_folder_prefix_output_file="${local_folder_rel_path}/12_transfer_vinyl_to_t_shirt_generated"
mkdocs_page_url="${mkdocs_home_url}/steps/12_transfer_vinyl_to_t_shirt" # The page to link to; the rendered version of the source page
generated_en="${local_folder_prefix_output_file}_en.md"
cp ${local_folder_input_file} ${generated_en}
sed -i '/^---$/,/^---$/d' ${generated_en}

echo "------------------------------------------------------------------------"
echo "- Steps: create_svg"
echo "------------------------------------------------------------------------" 
local_folder_rel_path="docs/steps/create_svg"
local_folder_input_file="${local_folder_rel_path}/README.md"
local_folder_prefix_output_file="${local_folder_rel_path}/create_svg_generated"
mkdocs_page_url="${mkdocs_home_url}/steps/create_svg" # The page to link to; the rendered version of the source page
generated_en="${local_folder_prefix_output_file}_en.md"
cp ${local_folder_input_file} ${generated_en}
sed -i '/^---$/,/^---$/d' ${generated_en}

echo "------------------------------------------------------------------------"
echo "- Procedure"
echo "------------------------------------------------------------------------" 
local_folder_rel_path="docs/steps"
local_folder_input_file="${local_folder_rel_path}/procedure.md"
local_folder_prefix_output_file="${local_folder_rel_path}/procedure_generated"
mkdocs_page_url="${mkdocs_home_url}/steps/procedure" # The page to link to; the rendered version of the source page
generated_en="${local_folder_prefix_output_file}_en.md"
cp ${local_folder_input_file} ${generated_en}
sed -i '/^---$/,/^---$/d' ${generated_en}
