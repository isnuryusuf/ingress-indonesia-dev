.class Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method

.method private setCursorPosition(F)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->lastBlink:J

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    sub-float v2, p1, v0

    move v0, v1

    .line 134
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v0, v3, :cond_1

    .line 135
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v3, v3, v0

    cmpl-float v3, v3, v2

    if-lez v3, :cond_0

    .line 136
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 141
    :goto_1
    return-void

    .line 134
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    goto :goto_1
.end method


# virtual methods
.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x16

    const/16 v5, 0x15

    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 144
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 146
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v2

    .line 147
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    if-ne v2, v3, :cond_15

    .line 148
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x81

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x82

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 150
    :cond_0
    const/16 v1, 0x32

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->paste()V

    .line 152
    :cond_1
    const/16 v1, 0x1f

    if-eq p2, v1, :cond_2

    const/16 v1, 0x85

    if-ne p2, v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->copy()V

    .line 220
    :cond_3
    :goto_0
    return v0

    .line 153
    :cond_4
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x3b

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x3c

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 155
    :cond_5
    const/16 v2, 0x85

    if-ne p2, v2, :cond_6

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->paste()V

    .line 157
    :cond_6
    const/16 v2, 0x70

    if-ne p2, v2, :cond_7

    .line 158
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v2, :cond_7

    .line 159
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->copy()V

    .line 160
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->delete()V

    .line 164
    :cond_7
    if-ne p2, v5, :cond_9

    .line 165
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-nez v2, :cond_8

    .line 166
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iput v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    .line 167
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput-boolean v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 169
    :cond_8
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 171
    :cond_9
    if-ne p2, v6, :cond_b

    .line 172
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-nez v2, :cond_a

    .line 173
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iput v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    .line 174
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput-boolean v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 176
    :cond_a
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 178
    :cond_b
    if-ne p2, v4, :cond_d

    .line 179
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-nez v2, :cond_c

    .line 180
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iput v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    .line 181
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput-boolean v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 183
    :cond_c
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 185
    :cond_d
    const/16 v2, 0x84

    if-ne p2, v2, :cond_f

    .line 186
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-nez v2, :cond_e

    .line 187
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iput v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    .line 188
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput-boolean v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 190
    :cond_e
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 193
    :cond_f
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 194
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    goto/16 :goto_0

    .line 197
    :cond_10
    if-ne p2, v5, :cond_11

    .line 198
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 199
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 201
    :cond_11
    if-ne p2, v6, :cond_12

    .line 202
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 203
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 205
    :cond_12
    if-ne p2, v4, :cond_13

    .line 206
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 207
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 209
    :cond_13
    const/16 v2, 0x84

    if-ne p2, v2, :cond_14

    .line 210
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 211
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 214
    :cond_14
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 215
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    goto/16 :goto_0

    :cond_15
    move v0, v1

    .line 220
    goto/16 :goto_0
.end method

.method public keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 230
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    if-ne v0, v4, :cond_10

    .line 232
    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-nez v0, :cond_4

    .line 234
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 241
    :cond_1
    :goto_0
    const/16 v0, 0x7f

    if-ne p2, v0, :cond_6

    .line 242
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v0, :cond_3

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-nez v0, :cond_5

    .line 244
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    .line 278
    :cond_3
    :goto_1
    return v2

    .line 238
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->delete()V

    goto :goto_0

    .line 247
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->delete()V

    goto :goto_1

    .line 252
    :cond_6
    const/16 v0, 0xd

    if-eq p2, v0, :cond_7

    if-eq p2, v7, :cond_7

    .line 253
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-interface {v0, v4, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;->acceptChar(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    :cond_7
    const/16 v0, 0x9

    if-eq p2, v0, :cond_8

    if-ne p2, v7, :cond_a

    .line 256
    :cond_8
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v5, 0x3b

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v5, 0x3c

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_9
    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->next(Z)V

    .line 257
    :cond_a
    invoke-virtual {v3, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->containsCharacter(C)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-nez v0, :cond_d

    .line 259
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    .line 261
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 275
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-interface {v0, v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;->keyTyped(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;C)V

    goto/16 :goto_1

    :cond_c
    move v0, v1

    .line 256
    goto :goto_2

    .line 263
    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 264
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 266
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v3, :cond_e

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v4, v0, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 269
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    goto/16 :goto_3

    .line 266
    :cond_e
    const-string/jumbo v0, ""

    goto :goto_4

    :cond_f
    const-string/jumbo v0, ""

    goto :goto_5

    :cond_10
    move v2, v1

    .line 278
    goto/16 :goto_1
.end method

.method public keyUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 113
    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;->show(Z)V

    .line 117
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 118
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->setCursorPosition(F)V

    .line 119
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    goto :goto_0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->lastBlink:J

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    .line 126
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->setCursorPosition(F)V

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 128
    return-void
.end method
