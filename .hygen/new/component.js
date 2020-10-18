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
        message: 'What is name of the component?'
      },
      {
        type: 'input',
        name: 'dir',
        message: 'Where is the directory? (No problem in blank)',
      },
      {
        type: 'confirm',
        name: 'have_props',
        message: 'Is it have props?',
      },
      {
        type: 'confirm',
        name: 'have_children',
        message: 'Is it have children?',
      },
    ]
    return inquirer
      .prompt(questions)
      .then(answers => {
        const { category, component_name, dir, have_props, have_children } = answers
        const path = `${category}/${ dir ? `${dir}/` : `` }${component_name}`
        const abs_path = `src/components/${path}`
        const type_annotate = have_props ? "React.FC<Props>" : 'React.FC'
        const deps_props = have_props ? '(props)' : '()'
        const props = have_children ? '(props)' : deps_props
        const tag = args.tag ? args.tag : 'div'
        return { ...answers, path, abs_path, type_annotate, deps_props, props, tag }
      })
  }
}
