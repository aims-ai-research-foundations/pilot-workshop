# Workshop Readiness Quiz

A light, confidence-building self-check for participants before the in-person week. **20 questions** spanning the first four courses of the AI Research Foundations programme, from basic Python (string processing) through language models and n-grams, tokenization and embeddings, neural networks and training, transformers and attention, plus why GPUs matter and responsible innovation.

This file is the **source of truth** for the quiz content. The quiz is rendered as an interactive page on the website at `/quiz/` (see `website/layouts/_default/quiz.html`).

**Mix:** 12 single-answer multiple choice, 5 select-all-that-apply (multiple option), 3 true/false.

**Feedback rules:**
- **Multiple choice:** one message shown if they answer correctly, one shown if they answer incorrectly.
- **Multiple option (select all):** a per-option explanation of why each option is correct or incorrect.
- **True/false:** a single feedback message.

Every option is written to be plausible and on-topic, so the quiz taker has to think. Distractors are real concepts, not throwaways. No em dashes are used anywhere.

---

## Topics and review links

| Topic | Questions | Review course | Link |
|---|---|---|---|
| Python Foundations (string processing) | 3 (basic, medium, thinking) | Start with Course 01 | https://www.skills.google/paths/3135/course_templates/1341 |
| Language Models and n-grams | 3 | Course 01: Build your own small language model | https://www.skills.google/paths/3135/course_templates/1341 |
| Tokenization and Embeddings | 3 | Course 02: Represent Your Language Data | https://www.skills.google/paths/3135/course_templates/1452 |
| Neural Networks and Training | 4 | Course 03: Design and Train Your Neural Networks | https://www.skills.google/paths/3135/course_templates/1450 |
| Transformers and Attention | 4 | Course 04: Discover the Transformer Architecture | https://www.skills.google/paths/3135/course_templates/1451 |
| Why GPUs Matter | 1 | Course 07: Accelerate Your Model | https://www.skills.google/paths/3135/course_templates/1555 |
| Responsible Innovation | 2 | AI Research Foundations (runs through every course) | https://www.skills.google/paths/3135 |

---

## Python Foundations (string processing)

### Q1 (multiple choice, basic)
**What is the value of greeting after this code runs?**
```python
name = "AIMS"
greeting = "Hello, " + name + "!"
```

- A) `Hello, AIMS!`
- B) `Hello, name!`
- C) `Hello, + AIMS + !`
- D) `HelloAIMS`

**Correct answer:** A

- ✅ **If right:** Correct. The `+` operator joins strings in order, and the variable `name` holds `"AIMS"`, so the result is `"Hello, AIMS!"`. The space after the comma is part of the string, so it shows up in the output.
- ❌ **If wrong:** The result is `"Hello, AIMS!"`. The `+` operator concatenates the strings left to right, and `name` is replaced by its value `"AIMS"`. The space and the exclamation mark are part of the literal text, so they appear in the output too.

**Review:** Start with Course 01.

---

### Q2 (multiple choice, medium)
**What does this code print?**
```python
word = "Transformer"
print(word[:5].lower())
```

- A) `trans`
- B) `Trans`
- C) `transformer`
- D) `former`

**Correct answer:** A

- ✅ **If right:** Correct. `word[:5]` keeps the first five characters (`"Trans"`), then `.lower()` makes them lowercase, giving `"trans"`. The methods run left to right, so the slice happens before the lowercasing.
- ❌ **If wrong:** It prints `trans`. The slice `word[:5]` keeps characters at positions 0 to 4 (`"Trans"`), and `.lower()` then makes them lowercase. `"former"` would need `word[5:]`, and `"transformer"` would be the whole word lowercased.

**Review:** Start with Course 01.

---

### Q3 (multiple option, select all that apply, thinking)
**After this code runs, which statements about the variable `tokens` are true?**
```python
line = "  The Cat sat.  "
tokens = line.strip().lower().split()
```

- A) The leading and trailing spaces have been removed
- B) Every character is lowercase
- C) `tokens` is a list of words
- D) `tokens` is a single string

**Correct answers:** A, B, C

- A) ✅ **Correct.** `strip()` removes whitespace from both ends of the string before the rest of the chain runs.
- B) ✅ **Correct.** `lower()` converts all characters to lowercase, so `"The Cat"` becomes `"the cat"`.
- C) ✅ **Correct.** `split()` breaks the cleaned text on whitespace and returns a list: `["the", "cat", "sat."]`. Note that `"sat."` still keeps the full stop, since `split()` only divides on spaces.
- D) ❌ **Incorrect.** `split()` returns a list, not a string. `strip()` and `lower()` return strings, but `split()` is the step that turns the text into separate items.

**Review:** Start with Course 01.

---

## Language Models and n-grams

### Q4 (multiple choice)
**What does a language model fundamentally do?**

- A) Predicts the next token given the tokens that came before it
- B) Looks up the grammatically correct version of a sentence in a fixed rulebook
- C) Counts how often each word appears and returns the most frequent one
- D) Stores sentences and retrieves the closest matching one from a database

**Correct answer:** A

- ✅ **If right:** Correct. A language model assigns probabilities to sequences and predicts what is likely to come next given the context. Text generation, translation, and chat assistants are all built on this next-token prediction.
- ❌ **If wrong:** A language model predicts the next token from the ones before it, learning probabilities from large amounts of text. It does not use a fixed grammar rulebook, simple word counts, or a lookup database. Those are much more limited approaches.

**Review:** Course 01: Build your own small language model.

---

### Q5 (multiple choice)
**A bigram language model predicts the next word using...**

- A) the single previous word
- B) the two previous words
- C) every word that came before it in the text
- D) the most frequent word in the training data

**Correct answer:** A

- ✅ **If right:** Correct. A bigram (n = 2) conditions on exactly one previous word. In general an n-gram uses the previous n minus 1 words, so a trigram would use the previous two.
- ❌ **If wrong:** A bigram uses just the single previous word. Two previous words would be a trigram, and using every earlier word is closer to what modern models attempt. Always choosing the most frequent word would ignore context entirely.

**Review:** Course 01: Build your own small language model.

---

### Q6 (true / false)
**A major limitation of n-gram models is that they cannot capture long-range context, because they only look back a fixed, small number of words.**

**Correct answer:** True

**Feedback:** True. An n-gram only sees a fixed, short window of previous words, so it misses dependencies that span a whole sentence or paragraph, such as losing track of the subject of a long sentence. Overcoming this is a big reason transformers were such a step forward.

**Review:** Course 01: Build your own small language model.

---

## Tokenization and Embeddings

### Q7 (multiple choice)
**What is tokenization?**

- A) Breaking text into smaller units such as words, sub-words, or characters
- B) Removing punctuation and common stop words from the text
- C) Replacing each word with its part-of-speech tag
- D) Shortening a document into a brief summary

**Correct answer:** A

- ✅ **If right:** Correct. Tokenization splits raw text into the units a model processes. Modern models usually use sub-word tokens, which balance vocabulary size against sequence length.
- ❌ **If wrong:** Tokenization breaks text into smaller units (words, sub-words, or characters). The other options are real text-processing tasks (stop-word removal, part-of-speech tagging, and summarization), but none of them is tokenization.

**Review:** Course 02: Represent Your Language Data.

---

### Q8 (true / false)
**Words with similar meanings tend to have embeddings that are close together in vector space.**

**Correct answer:** True

**Feedback:** True. Embeddings place each token at a point in a high-dimensional space, and training arranges that space so related words sit near each other while unrelated words sit far apart. This is what lets a model treat "king" and "queen" as more similar than "king" and "banana".

**Review:** Course 02: Represent Your Language Data.

---

### Q9 (multiple option, select all that apply)
**Which of these are common types of tokenization?**

- A) Word-level
- B) Character-level
- C) Sub-word, such as byte-pair encoding (BPE)
- D) Embedding-level

**Correct answers:** A, B, C

- A) ✅ **Correct.** Each whole word is a token. It is simple, but the vocabulary gets large and rare words are hard to handle.
- B) ✅ **Correct.** Each character is a token. The vocabulary stays tiny, but the sequences become very long.
- C) ✅ **Correct.** Common pieces of words become tokens. This is what most modern models use, since it balances vocabulary size and sequence length and handles rare words well.
- D) ❌ **Incorrect.** Embeddings are not a way of tokenizing. They come after tokenization, mapping each token to a vector. Mixing up the two steps is a common misconception.

**Review:** Course 02: Represent Your Language Data.

---

## Neural Networks and Training

### Q10 (multiple choice)
**What is overfitting?**

- A) The model performs well on the training data but poorly on new, unseen data
- B) The model performs poorly on both the training data and new data
- C) The model performs well on both the training data and new data
- D) The model performs poorly on training data but well on new data

**Correct answer:** A

- ✅ **If right:** Correct. An overfit model has essentially memorised the training data, including its noise, so it does well there but fails to generalise. This is why we always check performance on a held-out test set.
- ❌ **If wrong:** Overfitting is strong training performance paired with weak performance on new data. Option B describes underfitting, option C describes a well-generalised model, and option D does not normally happen in practice.

**Review:** Course 03: Design and Train Your Neural Networks.

---

### Q11 (multiple choice)
**What is the role of backpropagation when training a neural network?**

- A) It calculates how much each weight contributed to the error, so the weights can be updated
- B) It sets the initial random values of the weights before training begins
- C) It chooses which training examples go into each batch
- D) It decides when training should stop to avoid overfitting

**Correct answer:** A

- ✅ **If right:** Correct. Backpropagation works backwards from the loss through the network, computing the gradient of the loss with respect to each weight. An optimiser such as stochastic gradient descent then uses those gradients to update the weights.
- ❌ **If wrong:** Backpropagation computes the gradients that tell the optimiser how to adjust each weight. The other options describe real but different parts of training: weight initialisation, batching, and early stopping.

**Review:** Course 03: Design and Train Your Neural Networks.

---

### Q12 (multiple choice)
**Your model reaches very low training loss but performs badly on the test set. What is the most likely cause?**

- A) Overfitting
- B) Underfitting
- C) The learning rate is too high
- D) There are too few features in the dataset

**Correct answer:** A

- ✅ **If right:** Correct. Low training loss together with poor test performance is the classic sign of overfitting: the model has learned the training data too closely and does not generalise. Dropout, regularization, or early stopping can help.
- ❌ **If wrong:** This pattern points to overfitting. Underfitting would show high training loss too. A learning rate that is too high usually makes training unstable rather than giving very low training loss, and too few features tends to hurt training performance as well.

**Review:** Course 03: Design and Train Your Neural Networks.

---

### Q13 (multiple option, select all that apply)
**Which of these help reduce overfitting?**

- A) Dropout
- B) Regularization
- C) Early stopping
- D) Training for many more epochs until the training loss reaches zero

**Correct answers:** A, B, C

- A) ✅ **Correct.** Dropout randomly switches off units during training, so the model cannot lean too heavily on any single feature.
- B) ✅ **Correct.** Regularization penalises overly complex models, nudging them toward simpler patterns that generalise better.
- C) ✅ **Correct.** Early stopping ends training once validation performance stops improving, before the model starts memorising the training data.
- D) ❌ **Incorrect.** Training longer until the loss hits zero usually makes overfitting worse, not better, because the model memorises the training data even more closely.

**Review:** Course 03: Design and Train Your Neural Networks.

---

## Transformers and Attention

### Q14 (multiple choice)
**What does the attention mechanism let a model do?**

- A) Weigh how relevant the other tokens are when building the representation of a given token
- B) Process each token completely on its own, ignoring the other tokens
- C) Squeeze the whole input into a single fixed-size vector before processing it
- D) Reorder the tokens by frequency before making a prediction

**Correct answer:** A

- ✅ **If right:** Correct. Self-attention lets each token look at the others and weigh how relevant each one is, producing a representation that reflects the whole context. This is how transformers build contextual meaning.
- ❌ **If wrong:** Attention is about weighing the relevance of other tokens for each token. Option B is the opposite of attention, and option C describes the fixed-vector bottleneck of older sequence models that attention was designed to overcome.

**Review:** Course 04: Discover the Transformer Architecture.

---

### Q15 (multiple option, select all that apply)
**Which of these are components of a transformer?**

- A) Positional embeddings
- B) Attention with query, key, and value matrices
- C) Layer normalization
- D) Recurrent (LSTM) cells that read tokens one at a time

**Correct answers:** A, B, C

- A) ✅ **Correct.** Because attention has no built-in sense of order, positional embeddings tell the model where each token sits in the sequence.
- B) ✅ **Correct.** These three matrices are the core of the attention mechanism, deciding how tokens attend to one another.
- C) ✅ **Correct.** Layer normalization keeps the values flowing through the network stable, which helps training. Skip connections and a feed-forward (MLP) block are also part of the architecture.
- D) ❌ **Incorrect.** Transformers deliberately removed recurrence. Instead of stepping through tokens one by one like an LSTM, they process all tokens in parallel using attention.

**Review:** Course 04: Discover the Transformer Architecture.

---

### Q16 (true / false)
**A transformer can attend to an unlimited amount of text at once, with no size limit.**

**Correct answer:** False

**Feedback:** False. Every transformer has a fixed context window, and the cost of attention grows with the square of the sequence length. That quadratic scaling is why very long inputs are expensive and why the context window has a practical limit.

**Review:** Course 04: Discover the Transformer Architecture.

---

### Q17 (multiple choice)
**In the attention mechanism, the three learned matrices are called...**

- A) Query, Key, and Value
- B) Input, Forget, and Output
- C) Encoder, Decoder, and Embedding
- D) Mean, Variance, and Scale

**Correct answer:** A

- ✅ **If right:** Correct. Each token produces a query, a key, and a value. Comparing queries with keys decides how much of each token's value is mixed into the result.
- ❌ **If wrong:** The three are Query, Key, and Value. Input, Forget, and Output are the gates of an LSTM, Encoder and Decoder are larger transformer blocks rather than the attention matrices, and Mean and Variance belong to layer normalization.

**Review:** Course 04: Discover the Transformer Architecture.

---

## Why GPUs Matter

### Q18 (multiple choice)
**Why are GPUs so well suited to training neural networks?**

- A) They can perform many matrix multiplications in parallel
- B) They run each individual instruction much faster than a CPU does
- C) They keep the entire dataset in memory so it never needs reloading
- D) They automatically make the model smaller so it trains faster

**Correct answer:** A

- ✅ **If right:** Correct. Neural network training is mostly large matrix multiplications, and a GPU has thousands of cores that run these operations in parallel. That parallelism, not raw per-instruction speed, is what makes GPUs so much faster for this work.
- ❌ **If wrong:** GPUs win through massive parallelism: they do many matrix multiplications at once. A single GPU core is not necessarily faster than a CPU core, GPUs do not store datasets permanently, and they do not shrink the model on their own.

**Review:** Course 07: Accelerate Your Model.

---

## Responsible Innovation

### Q19 (multiple choice)
**What is a core idea of responsible innovation when building AI systems?**

- A) Anticipating a technology's possible impacts and considering who it might benefit or harm
- B) Maximising model accuracy above every other consideration
- C) Adding an ethics review only after the system has already launched
- D) Leaving social and ethical questions entirely to policymakers

**Correct answer:** A

- ✅ **If right:** Correct. Responsible innovation means thinking ahead about a system's impacts, both good and bad, and considering the people and communities affected, so issues can be addressed early in the design.
- ❌ **If wrong:** Responsible innovation is about anticipating impacts and asking who benefits and who could be harmed. Chasing accuracy alone, bolting on ethics after launch, or leaving these questions only to policymakers all miss the point of building responsibly from the start.

**Review:** AI Research Foundations on Google Skills.

---

### Q20 (multiple option, select all that apply)
**Which of these are part of innovating responsibly with AI?**

- A) Considering the perspectives of the different stakeholders and communities a system affects
- B) Anticipating both the benefits and the risks of a system
- C) Reflecting on environmental and resource impacts such as energy, water, and minerals
- D) Prioritising fast deployment over engaging the affected communities

**Correct answers:** A, B, C

- A) ✅ **Correct.** Listening to and mapping the people a system touches is central to building it responsibly.
- B) ✅ **Correct.** Thinking through a range of outcomes, positive and negative, helps you design systems that are sensitive to their context.
- C) ✅ **Correct.** AI systems consume real resources, so their environmental footprint is part of responsible design, especially where those burdens fall unevenly.
- D) ❌ **Incorrect.** Speed should not come at the expense of engaging the people a system affects. Rushing past that engagement is a common pitfall, not responsible practice.

**Review:** AI Research Foundations on Google Skills.

---

## Scoring and readiness bands

Each question is worth 1 point (20 total). Select-all questions score a point only when the exact correct set is chosen.

| Score | Band | Message |
|---|---|---|
| 85 to 100% | Ready to roll 🚀 | You are well prepared. Skim anything you missed and you are set for the week. |
| 60 to 84% | Almost there 💪 | Solid foundation. Revisit the topics flagged below before the workshop. |
| 0 to 59% | Worth a refresher 📚 | No worries, that is exactly what the pre-work is for. Focus on the topics below. |

The results screen shows the score with a readiness band, a **per-topic breakdown** so participants can see which areas to revisit (with a Google Skills review link per weak topic), and a step-through **review mode** where they can walk through every question, see their answer against the correct one, read the explanation, and follow the course link.
