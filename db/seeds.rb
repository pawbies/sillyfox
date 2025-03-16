# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
Ingredient.destroy_all

User.create!(
  email_address: "alex.fuchs970@gmail.com",
  username: "Pawbies",
  password: "alex",
  password_confirmation: "alex",
  role: :admin
)

[
  # { name: "Ingredient name", description: "What this compound does... (max 500 characters)", dosage: "The clinical dosage in one serving of preworkout example: '4g - 8g' or '200mg - 800mg'", rating: "bad/meh/good (depending on the usefulness of the compound)" },
  {
    name: "Beta-alanine",
    description: "Beta-alanine is a non-essential amino acid that combines with histidine to form carnosine, which helps buffer acid in muscles during high-intensity exercise. May cause tingling sensation (paresthesia).",
    dosage: "4g - 8g",
    rating: "meh"
  },
  {
    name: "Caffeine",
    description: "Central nervous system stimulant that increases alertness, reduces perceived effort, and delays fatigue. The most evidence-backed preworkout ingredient. Tolerance develops with regular use.",
    dosage: "100mg - 400mg",
    rating: "good"
  },
  {
    name: "L-Citrulline DL-Malate 2:1",
    description: "Precursor to nitric oxide that improves blood flow and nutrient delivery to muscles. Enhances 'pump' and may reduce fatigue through ammonia clearance.",
    dosage: "6g - 8g",
    rating: "good"
  },
  {
    name: "Creatine Monohydrate",
    description: "Increases phosphocreatine stores for ATP regeneration during high-intensity exercise. Also draws water into muscle cells. Best taken consistently rather than just pre-workout.",
    dosage: "3g - 5g",
    rating: "good"
  },
  {
    name: "Betaine Anhydrous (TMG)",
    description: "Derived from beetroot, may increase power output and muscular endurance through osmoregulation and homocysteine metabolism.",
    dosage: "2g - 2.5g",
    rating: "meh"
  },
  {
    name: "L-Theanine",
    description: "Amino acid from tea leaves that promotes relaxed focus. Often paired with caffeine to smooth out jitters while maintaining cognitive benefits.",
    dosage: "100mg - 200mg",
    rating: "good"
  },
  {
    name: "Taurine",
    description: "Conditionally essential amino acid involved in hydration, electrolyte balance, and antioxidant defense. May enhance the effects of caffeine.",
    dosage: "1g - 3g",
    rating: "meh"
  },
  {
    name: "L-Tyrosine",
    description: "Precursor to dopamine and norepinephrine. May help maintain cognitive performance under stress but limited exercise-specific evidence.",
    dosage: "500mg - 2000mg",
    rating: "meh"
  },
  {
    name: "BCAAs (2:1:1)",
    description: "Branched-chain amino acids (leucine, isoleucine, valine) that may reduce muscle breakdown during training. Controversial efficacy in fed state.",
    dosage: "5g - 10g",
    rating: "meh"
  },
  {
    name: "Sodium Bicarbonate",
    description: "pH buffer that neutralizes lactic acid. Effective for repeated high-intensity efforts but can cause GI distress. Timing is crucial.",
    dosage: "300mg - 600mg",
    rating: "meh"
  },
  {
    name: "Glycerol",
    description: "Osmotic agent that increases fluid retention and plasma volume. May enhance hydration and 'pump' but evidence is mixed.",
    dosage: "1g - 2g",
    rating: "meh"
  },
  {
    name: "Black Pepper Extract (Bioperine®)",
    description: "Enhances nutrient absorption through thermogenic activity and inhibition of metabolite excretion. Typically used in small amounts.",
    dosage: "5mg - 15mg",
    rating: "meh"
  },
  # Stimulant/Energy
  {
    name: "Dynamine® (Methylliberine)",
    description: "Rapid-acting purine alkaloid similar to caffeine but with quicker onset. Binds to adenosine receptors without downstream tolerance effects.",
    dosage: "50mg - 150mg",
    rating: "meh"
  },
  {
    name: "TeaCrine® (Theacrine)",
    description: "Caffeine-like compound from kucha tea with longer-lasting effects. May enhance dopamine and adenosine modulation without jitters.",
    dosage: "100mg - 250mg",
    rating: "meh"
  },
  {
    name: "Yohimbine HCl",
    description: "Alpha-2 adrenergic receptor antagonist that increases norepinephrine. Used for fat loss but can cause anxiety/BP spikes. Avoid with caffeine.",
    dosage: "2mg - 8mg",
    rating: "meh"
  },

  # Pump/Vasodilators
  {
    name: "Agmatine Sulfate",
    description: "Arginine metabolite that enhances nitric oxide production while modulating NMDA receptors. May improve pumps and pain tolerance.",
    dosage: "500mg - 1g",
    rating: "meh"
  },
  {
    name: "Nitrosigine® (Inositol-Stabilized Arginine Silicate)",
    description: "Patented complex that boosts nitric oxide and provides silicon for collagen synthesis. Enhances pumps and nutrient delivery.",
    dosage: "750mg - 1.5g",
    rating: "meh"
  },

  # Cognitive/Nootropic
  {
    name: "Alpha-GPC",
    description: "Choline source that crosses blood-brain barrier. Supports acetylcholine production for focus/mind-muscle connection.",
    dosage: "300mg - 600mg",
    rating: "meh"
  },
  {
    name: "Huperzine A",
    description: "Acetylcholinesterase inhibitor that increases acetylcholine levels. May enhance cognitive function and delay CNS fatigue.",
    dosage: "50mcg - 200mcg",
    rating: "meh"
  },

  # Electrolytes/Hydration
  {
    name: "Coconut Water Powder",
    description: "Natural source of potassium and electrolytes. Helps maintain fluid balance and prevent cramping during endurance training.",
    dosage: "1g - 3g",
    rating: "meh"
  },
  {
    name: "Himalayan Pink Salt",
    description: "Contains trace minerals and sodium to enhance hydration, nutrient absorption, and muscle contraction efficiency.",
    dosage: "500mg - 1g",
    rating: "meh"
  },

  # Thermogenics
  {
    name: "Capsaicin (from Chili Pepper)",
    description: "TRPV1 agonist that increases thermogenesis and fat oxidation. May enhance endurance through pain threshold modulation.",
    dosage: "50mg - 200mg",
    rating: "meh"
  },
  {
    name: "Green Tea Extract (EGCG)",
    description: "Catechin antioxidant that supports fat metabolism and mild stimulant effects through caffeine synergy.",
    dosage: "300mg - 500mg",
    rating: "meh"
  },

  # Recovery/Endurance
  {
    name: "L-Glutamine",
    description: "Conditionally essential amino acid that aids muscle recovery and gut health. Benefits more apparent in endurance athletes.",
    dosage: "5g - 10g",
    rating: "meh"
  },
  {
    name: "Ornithine",
    description: "Urea cycle intermediate that may reduce fatigue by clearing ammonia during prolonged exercise.",
    dosage: "1g - 2g",
    rating: "meh"
  },

  # Specialized
  {
    name: "PeakO2® (Cordyceps Militaris Mushroom Extract)",
    description: "Patented mushroom extract shown to increase VO2 max and ATP production through enhanced oxygen utilization.",
    dosage: "1g - 2g",
    rating: "meh"
  },
  {
    name: "AstraGin®",
    description: "Compound of astragalus and panax notoginseng that increases nutrient absorption (especially amino acids and creatine).",
    dosage: "50mg - 100mg",
    rating: "meh"
  },
  {
    name: "EnXtra® (Alpinia galanga extract)",
    description: "Sustained-release energy ingredient targeting alpha-1 and beta-2 adrenergic receptors without typical stim side effects.",
    dosage: "300mg - 450mg",
    rating: "meh"
  },

  # Emerging Ingredients
  {
    name: "Kanna (Sceletium tortuosum)",
    description: "South African herb with SSRI-like effects. Used in some preworkouts for mood elevation and stress resilience.",
    dosage: "50mg - 100mg",
    rating: "meh"
  },
  {
    name: "Shilajit (Fulvic Acid Complex)",
    description: "Himalayan mineral pitch containing dibenzo-alpha-pyrones. May enhance mitochondrial function and nutrient transport.",
    dosage: "250mg - 500mg",
    rating: "meh"
  },
  {
    name: "DMHA (Octodrine)",
    description: "Sympathomimetic amine with adrenaline-like effects. Banned in many sports organizations. Controversial safety profile.",
    dosage: "50mg - 150mg",
    rating: "bad"
  },
  {
    name: "Eria Jarensis (N-Phenethyl Dimethylamine)",
    description: "Natural stimulant targeting dopamine receptors. Provides smooth energy without caffeine-like crash.",
    dosage: "100mg - 300mg",
    rating: "meh"
  },
  {
    name: "Higenamine",
    description: "Beta-2 adrenergic agonist derived from aconite root. Increases heart rate and fat oxidation. Banned by WADA.",
    dosage: "25mg - 75mg",
    rating: "bad"
  },

  # Nootropic Complexes
  {
    name: "Noopept",
    description: "Synthetic racetam-like compound with neuroprotective effects. Enhances memory and focus at microdoses.",
    dosage: "10mg - 30mg",
    rating: "meh"
  },
  {
    name: "Phenylpiracetam",
    description: "Stimulating racetam variant that crosses blood-brain barrier. May enhance cold tolerance and cognitive performance.",
    dosage: "100mg - 300mg",
    rating: "meh"
  },

  # Natural Alternatives
  {
    name: "Rhodiola Rosea (3% Rosavins)",
    description: "Adaptogen that reduces fatigue perception via dopamine and serotonin modulation. Enhances endurance performance.",
    dosage: "200mg - 600mg",
    rating: "meh"
  },
  {
    name: "Panax Ginseng Extract",
    description: "Traditional herb containing ginsenosides that improve nitric oxide production and combat physical/mental fatigue.",
    dosage: "200mg - 400mg",
    rating: "meh"
  },

  # Pump Enhancers
  {
    name: "Norvaline (L-Norvaline)",
    description: "Arginase inhibitor that increases L-arginine availability for nitric oxide production. Potential neurotoxicity concerns.",
    dosage: "150mg - 300mg",
    rating: "bad"
  },
  {
    name: "Grape Seed Extract (95% OPC)",
    description: "Powerful antioxidant that enhances vascular function through increased nitric oxide synthase activity.",
    dosage: "150mg - 300mg",
    rating: "meh"
  },

  # Recovery Additives
  {
    name: "HMB (β-Hydroxy β-Methylbutyrate)",
    description: "Leucine metabolite that reduces muscle protein breakdown. More effective for untrained individuals.",
    dosage: "2g - 3g",
    rating: "meh"
  },
  {
    name: "Tart Cherry Extract",
    description: "Natural source of anthocyanins that reduce exercise-induced inflammation and muscle soreness.",
    dosage: "500mg - 1000mg",
    rating: "meh"
  },

  # Novel Compounds
  {
    name: "Epicatechin (from Cocoa)",
    description: "Flavan-3-ol that increases follistatin to inhibit myostatin. May enhance muscle growth and endurance.",
    dosage: "50mg - 100mg",
    rating: "meh"
  },
  {
    name: "PQQ (Pyrroloquinoline Quinone)",
    description: "Mitochondrial biogenesis activator that improves energy production efficiency. Synergizes with CoQ10.",
    dosage: "10mg - 20mg",
    rating: "meh"
  },

  # Gut Health
  {
    name: "Probiotic Blend (Bacillus subtilis DE111)",
    description: "Spore-forming probiotics that survive stomach acid to improve nutrient absorption and reduce exercise-induced GI stress.",
    dosage: "1B CFU - 10B CFU",
    rating: "meh"
  },

  # Specialty Ingredients
  {
    name: "KSM-66® Ashwagandha",
    description: "Standardized adaptogen shown to reduce cortisol levels and improve resistance training performance.",
    dosage: "300mg - 600mg",
    rating: "meh"
  },
  {
    name: "Shoden® Ashwagandha",
    description: "High-potency extract (35% withanolides) that enhances ATP production and stress resilience.",
    dosage: "120mg - 240mg",
    rating: "meh"
  },

  # Emerging Research
  {
    name: "Ergothioneine (from Mushrooms)",
    description: "Cellular antioxidant that accumulates in mitochondria. May protect against exercise-induced oxidative damage.",
    dosage: "5mg - 20mg",
    rating: "meh"
  },
  {
    name: "Pterostilbene",
    description: "Bioavailable resveratrol analog that activates AMPK for improved energy partitioning and recovery.",
    dosage: "50mg - 100mg",
    rating: "meh"
  }
].each do |ingredient|
  Ingredient.create! ingredient
end
