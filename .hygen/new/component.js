module.exports = {
  prompt: ({ inquirer }) => {
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
        message: 'Give it a component name.'
      },
      {
        type: 'input',
        name: 'dir',
        message: 'Give it a dir name.(optional)',
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
        const { category, component_name, dir } = answers
        const path = `${category}/${ dir ? `${dir}/` : `` }${component_name}`
        const abs_path = `src/components/${path}`
        return { ...answers, path, abs_path }
      })
  }
}
