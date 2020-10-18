// 
// npm run new:sfc -- --tag=p
// 
module.exports = {
  prompt: ({ inquirer, args }) => {
    const questions = [
      {
        type: 'select',
        name: 'category',
        message: 'Which Atomic Design category?',
        choices: ['atoms', 'molecules', 'organisms', 'templates']
      },
      {
        type: 'input',
        name: 'component_name',
        message: 'What is the name of component?'
      },
      {
        type: 'input',
        name: 'dir',
        message: 'Where is the directory? (No problem in blank)',
      },
      {
        type: 'confirm',
        name: 'have_style',
        message: 'Is it have style?',
      },
      {
        type: 'confirm',
        name: 'have_props',
        message: 'Is it have props?',
      },
      {
        type: 'confirm',
        name: 'have_hooks',
        message: 'Is it have hooks?',
      },
    ]
    return inquirer
      .prompt(questions)
      .then(answers => {
        const { category, component_name, dir, have_props } = answers
        const path = `${category}/${ dir ? `${dir}/` : `` }${component_name}`
        const abs_path = `src/components/${path}`
        const type_annotate = have_props ? "React.FC<Props>" : 'React.FC'
        const props = have_props ? '(props)' : '()'
        const tag = args.tag ? args.tag : 'div'
        return { ...answers, path, abs_path, type_annotate, props, tag }
      })
  }
}
