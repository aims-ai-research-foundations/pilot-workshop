# COURSE 01 - Build your own small language model

LINK: https://www.skills.google/paths/3135/course_templates/1341

In this course, you will develop the skills, knowledge and values that researchers draw upon when building and deploying machine learning technologies. You will do this by focusing on language models, which are one example of a machine learning model. 

To gain an intuitive understanding of how language models work, you will start off with a manual method based on your knowledge of language. You will then progress to a statistical method based on the co-occurrences of words in large collections of text. From this, you will observe the limitations of the statistical method and the need for more sophisticated models. This will lead you to experiment with and train a transformer model, a type of machine learning technology that forms the backbone of most modern large language models.

As you develop your technical skills and knowledge, you will consider how machine learning methods can be applied to solve real-world challenges. Through case studies, you will examine how machine learning researchers tackle such challenges in fields as diverse as molecular biology and education. You will adopt this research mindset when considering problems from your own context and reflect on the responsibilities involved when working with large language models. This will require you to anticipate their potential impacts, reflect on why they are needed, and think about who they can benefit and how.    

By the end of this course you will be able to: 

1. Explain what a language model is and why it is useful.

2. Give examples of language models and how they are useful for natural language processing (NLP) applications.

3. Implement a language model using n-grams.

4. Describe the deficiencies of n-grams and explain why transformer-based models make better language models.

5. List the steps involved in the machine learning development pipeline, referencing key concepts such as tokenization, loss, learning, inference, and evaluation.

6. Train a simple transformer small language model (SLM) using the deep learning framework Keras.

7. Give examples of how transformer models have been used in research and how they have been applied.

8. Recognize the process researchers follow when building, refining, and evaluating a large language model (LLM).

9. Consider the ethical implications of building large language models and respond to issues around innovating responsibly.

10. Formulate a problem statement for a challenge that reflects the values of your community and relates to the real-world needs you have identified in your local context.


# COURSE 02 - Represent Your Language Data

LINK: https://www.skills.google/paths/3135/course_templates/1452

In this course, you will learn the main steps for translating potentially messy human language into a structured, mathematical format that a language model can understand and learn from. You will also learn how to design and document datasets ethically. This will require you to recognize that what goes into a dataset shapes not only the technical performance of an LLM but also whose voices are represented, whose are excluded, and how cultural knowledge is treated. 

You will begin by tackling the challenges of real-world text, learning data preprocessing techniques to clean data by stripping out HTML and handling special Unicode characters. From there, you will explore the critical process of tokenization, starting with simple word and character-based approaches and discovering their limitations. 

This will demonstrate the need for the more sophisticated subword tokenization algorithms used in modern models, leading you to the final technical step: converting tokens into meaning with embeddings. Here, you will learn how these high-dimensional vectors allow a transformer model to encode the relationships and nuances of language.

Throughout the course, you will investigate core ethical issues, such as privacy, consent, and ownership, while also connecting them to broader questions of governance, accountability, and responsible innovation. 

By practicing with tools like Data Cards, you will gain practical skills to plan datasets transparently and responsibly, ensuring they align with community values rather than reproducing harmful patterns of digital extraction. This is valuable because it equips you with the critical understanding and practical methods needed to build AI systems that are not only effective but also trusted, equitable, and socially beneficial. These are skills that are particularly vital for future AI developers working at the intersection of technology, culture, and community needs. 

By the end of the course, you will be able to:

1. Explain the nuances and complexities of language data with regard to tokenization.

2. Relate the token distribution in your dataset to Zipf’s law, describing the relationship between the frequency and the rank of a token.

3. Discuss the trade-off between vocabulary size, model size and computational efficiency.   

4. Explain the different types of tokenization methods (e.g. character, word, subword) and analyze their effects on vocabulary size and sequence length.

5. Explain the role of special tokens (such as <BOS>, <EOS>, <PAD>, <UNK>) in model vocabulary.  

6. Describe the byte-pair encoding (BPE) algorithm and apply it to a text dataset. 

7. Recognize how embeddings capture the meaning of tokens.

8. Visualize word embeddings and understand the relationship between embeddings for tokens with similar and unrelated meanings.

9. Prepare a dataset for model training using a subword tokenizer and train a small language model on the preprocessed dataset.

10. Critically evaluate the ethical dimensions of dataset creation, including issues of privacy, consent, ownership, and representation, and explain how these shape the fairness and accountability of LLMs.

11. Design and document an ethical dataset using the Data Cards process, demonstrating how transparent, community-aligned data practices can support responsible AI development.


# COURSE 03 - Design And Train Your Neural Networks

LINK: https://www.skills.google/paths/3135/course_templates/1450

As part of this course, you will continue exploring how to avoid generalization issues such as the one that Noor experienced in the example in the previous activities. You will need to understand how neural network classifiers are implemented and are able to learn patterns. You will also gain a deeper understanding of the learning process. This will give you an overview of how fundamental mathematical concepts can be used to iteratively update the parameters of even the most complex models and how a model can learn the patterns in the training data. 

Finally, you will gain practical experience with implementing and training neural networks using the deep learning framework Keras. This knowledge is crucial for training your own models on tasks, and for ensuring their behaviour is expected when they are deployed.

AI developers learn to innovate responsibly because technologies like large language models do not exist in a vacuum. They inevitably interact with and reshape the social, cultural, organizational, and environmental contexts in which they are deployed. Without a deliberate focus on context and anticipation, developers may design tools that unintentionally create risks of adverse outcomes, exacerbate inequalities, or conflict with local ways of life. 

By learning to anticipate a range of possible outcomes, both positive and negative, developers can design AI systems that are sensitive to context and sustainable. This approach not only helps mitigate risks, especially for groups who may be disproportionately affected, but also increases the likelihood that AI innovations will generate meaningful, long-term benefits for the communities they serve. 

By the end of this course, you will be able to:

1. Explain the concept of generalization and its importance in making a model perform well on unseen data.

2. Recognize the limitations of training loss as the only metric for judging model quality and explain why good performance on training data does not guarantee real-world accuracy.

3. Explain how overfitting and underfitting impact model performance and describe how generalization and train-test splits can help to overcome this.

4. Interpret loss curves and the bias-variance trade-off and explain how they reflect model behavior during training and testing.

5. Design and evaluate multilayer perceptrons (MLPs) to solve simple classification tasks and describe the way model complexity, including layers and units, influences generalization.

6. Explain how hyperparameter tuning, such as the number of layers or hidden units, has an impact on training loss versus test performance.

7. Experiment with overfitting mitigation techniques such as regularization, dropout, early stopping, and model capacity control.

8. Describe the role of a validation dataset and explain why hyperparameter tuning should be performed on validation data rather than test data.

9. Summarize the role of backpropagation in the process of training a neural network.

10. Explain gradient-based optimization using the stochastic gradient descent (SGD) algorithm.

11. Train a neural network.

Consider the anticipated benefits and risks of AI models and how these can be addressed within your local region.



# COURSE 04 - Discover the Transformer Architecture

LINK: https://www.skills.google/paths/3135/course_templates/1451

This course discusses the fundamentals of the transformer architecture. To begin with you will focus on how the attention mechanism works. Next, you will explore how transformer models combine individual token embeddings to create contextual embeddings that capture information from the entire prompt. You will also learn which other components are used to build a transformer language model and what their purpose is. Finally, you will examine an implementation of a full transformer language model and interact with it by training a small language model.


Alongside the technical work, you will also consider questions of responsible innovation around community values, stakeholder perspectives, and engagement. Developing technology responsibly in your context requires not only technical skills but also the ability to recognize whose voices matter, how social values are shaped, and how to design AI systems with communities rather than simply for them.

By the end of this course you will be able to:

1. Summarize the key components of transformer architecture, including positional embeddings, encoder, decoder, attention (query, key, and value matrices), skip connections, layer normalization, and MLP.  

2. Explain and visualize the attention mechanism (self-attention) and two of its extensions: masked attention, multi-head attention.

3. Translate the mathematical expression of the attention head into code.

4. Describe transformer architecture referencing attention, feed-forward, skip connection, layer norm, positional embedding, and decoding.

5. Explain the capabilities and limitations of transformers referencing the fixed context window, quadratic scaling.

6. Implement multi-head masked attention.

7. Reflect on how everyday human interactions create shared meaning and social value, and analyze what may be lost when they are replaced by automated systems.

8. Identify and map stakeholders, their values, and their influence, recognizing how technologies can be viewed differently across communities.

9. Design a mini-engagement plan using appropriate methods to ensure that diverse perspectives meaningfully shape the design and use of AI projects.


# COURSE 05 - Fine-tune Your Model

LINK: https://www.skills.google/paths/3135/course_templates/1556

In this course, you will develop the skills, knowledge, and values that researchers draw upon when fine-tuning language models. This will enable you to go beyond training or using a model exclusively for next-token prediction. You will do this by first considering how data must be formatted, before moving on to full-parameter fine-tuning, and parameter-efficient fine-tuning (PEFT). 

Alongside the technical activities, you will explore the cultural meaning of AI systems and consider different AI futures. This will help you to anticipate the plausible risks and benefits of AI, which will enable you to produce designs for AI governance that are culturally grounded and socially just.   

By the end of this course, you will be able to: 

1. Describe at a high level the progression from next-token-prediction to instruction following.

2. Explain the difference between pre-training and fine-tuning using specialized data, and the trade-off between training from scratch and fine-tuning a foundation model.

3. Implement full-parameter fine-tuning.

4. Implement parameter-efficient fine-tuning using LoRA. 

5. List the limitations of supervised fine-tuning, especially relating to obtaining high-quality data for supervised fine-tuning.

6. Use fictional storytelling as a method to explore how AI systems may take on cultural meaning and shape different possible social futures.

7. Use foresight to identify plausible risks and benefits of AI, recognizing who may gain or lose in different contexts.

8. Critically evaluate and design governance approaches that include enforcement, bright-line rules, and burden of proof.


# COURSE 07 - Accelerate Your Model

LINK: https://www.skills.google/paths/3135/course_templates/1555


This course will equip you with the practical skills required for training and fine-tuning models with limited GPU resources. During the course, you will encounter several common issues, such as exceeding the available GPU memory when trying to fine-tune a model. You will also explore techniques to reduce the resource requirements. These techniques will allow you to get much more out of a GPU than if you were training and working with machine learning models without considering their computational and memory efficiency.

Additionally, in this course you will explore the importance of social meanings in determining the value of LLMs and how they can be effectively governed. This will enable you to ensure that social values are incorporated into their design.

By the end of this course you will be able to:

1. Explain how the GPU’s processor, memory, and storage interact to perform matrix multiplication.

2. Explain what a FLOP is and compute how many FLOPs are required when training a transformer language model.

3. Estimate how much memory is used for a given transformer architecture and how the memory use is broken down into model parameters, optimizer states, gradients, and activations.

4. Apply mixed precision training for memory optimization of a transformer model.

5. Explain the benefits of quantization for reducing memory usage when deploying a neural network.

6. Apply gradient accumulation for memory optimization of a transformer model to increase the effective batch size for a single GPU.

7. List advanced techniques for improving both the computation speed and memory cost for transformer models, including FlashAttention, multi-GPU training, gradient recomputation, and pre-fetching.

8. Identify and analyze how large language models and other AI systems can consume critical resources such as energy, water, and minerals, and explain the justice implications for African communities.

9. Evaluate and apply strategies for reducing the environmental impacts of AI such as efficient model design, fair resource use, and just governance, while considering how benefits and burdens are distributed across different stakeholders.