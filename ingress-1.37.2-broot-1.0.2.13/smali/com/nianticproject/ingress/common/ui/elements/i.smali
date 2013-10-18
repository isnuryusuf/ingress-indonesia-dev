.class public final Lcom/nianticproject/ingress/common/ui/elements/i;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# instance fields
.field private final a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private final b:F

.field private final c:F

.field private final d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field private final e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field private final f:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/nianticproject/ingress/common/ui/elements/n;",
            "Lcom/nianticproject/ingress/common/ui/elements/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;FFF)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 122
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/i;->f:Ljava/util/LinkedHashMap;

    .line 131
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/i;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 132
    iput p2, p0, Lcom/nianticproject/ingress/common/ui/elements/i;->b:F

    .line 133
    iput p3, p0, Lcom/nianticproject/ingress/common/ui/elements/i;->c:F

    .line 134
    const-string/jumbo v0, "butterbar-title"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/i;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 135
    const-string/jumbo v0, "small-white"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/i;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 137
    const-string/jumbo v0, "butter-bar-background"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/i;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 138
    invoke-virtual {p0, p4}, Lcom/nianticproject/ingress/common/ui/elements/i;->setWidth(F)V

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/i;->setVisible(Z)V

    .line 141
    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/j;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/elements/j;-><init>(Lcom/nianticproject/ingress/common/ui/elements/i;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/i;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 150
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/i;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/i;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-object v0
.end method

.method private b()V
    .locals 8

    .prologue
    const/high16 v5, 0x4000

    const/4 v0, 0x0

    const/high16 v7, 0x3ec0

    .line 199
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/i;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/i;->clearActions()V

    invoke-static {v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/elements/i;->b:F

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/i;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/i;->getY()F

    move-result v2

    invoke-static {v1, v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/i;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 248
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/i;->reset()V

    .line 205
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/i;->defaults()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->i()Lcom/a/a/c;

    .line 210
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/i;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v1

    .line 211
    mul-float v2, v1, v0

    mul-float v3, v1, v5

    const/high16 v4, 0x3f00

    mul-float/2addr v4, v1

    mul-float/2addr v1, v5

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/nianticproject/ingress/common/ui/elements/i;->pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 216
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/i;->a()Lcom/nianticproject/ingress/common/ui/elements/k;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_4

    .line 219
    iget-object v2, v1, Lcom/nianticproject/ingress/common/ui/elements/k;->b:Lcom/nianticproject/ingress/common/ui/elements/l;

    if-eqz v2, :cond_1

    .line 220
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v3, v1, Lcom/nianticproject/ingress/common/ui/elements/k;->b:Lcom/nianticproject/ingress/common/ui/elements/l;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/ui/elements/l;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/elements/i;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 221
    invoke-virtual {p0, v2}, Lcom/nianticproject/ingress/common/ui/elements/i;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 222
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getPrefHeight()F

    move-result v2

    add-float/2addr v0, v2

    .line 225
    :cond_1
    iget-object v2, v1, Lcom/nianticproject/ingress/common/ui/elements/k;->a:Ljava/util/Collection;

    if-eqz v2, :cond_2

    .line 226
    iget-object v1, v1, Lcom/nianticproject/ingress/common/ui/elements/k;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/elements/l;

    .line 227
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/i;->row()Lcom/a/a/c;

    .line 228
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v4, v0, Lcom/nianticproject/ingress/common/ui/elements/l;->a:Ljava/lang/String;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/ui/elements/i;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/elements/l;->b:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 231
    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/common/ui/elements/i;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 232
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getPrefHeight()F

    move-result v0

    add-float/2addr v0, v1

    move v1, v0

    .line 233
    goto :goto_1

    :cond_2
    move v1, v0

    .line 236
    :cond_3
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/i;->getPrefHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/i;->setHeight(F)V

    .line 237
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/i;->c:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/i;->setY(F)V

    .line 239
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/i;->setVisible(Z)V

    .line 242
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/i;->b:F

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/i;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/i;->setX(F)V

    .line 244
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/i;->clearActions()V

    .line 245
    invoke-static {v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/elements/i;->b:F

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/i;->getY()F

    move-result v2

    invoke-static {v1, v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/i;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/ui/elements/k;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 184
    .line 185
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/i;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/elements/n;

    goto :goto_0

    .line 188
    :cond_0
    if-eqz v0, :cond_1

    .line 189
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/i;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/elements/k;

    .line 191
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public final declared-synchronized a(Lcom/nianticproject/ingress/common/ui/elements/n;)V
    .locals 1
    .parameter

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/i;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/i;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/nianticproject/ingress/common/ui/elements/n;Lcom/nianticproject/ingress/common/ui/elements/l;Ljava/util/Collection;Lcom/nianticproject/ingress/common/ui/elements/o;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/ui/elements/n;",
            "Lcom/nianticproject/ingress/common/ui/elements/l;",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/common/ui/elements/l;",
            ">;",
            "Lcom/nianticproject/ingress/common/ui/elements/o;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/i;->f:Ljava/util/LinkedHashMap;

    new-instance v1, Lcom/nianticproject/ingress/common/ui/elements/k;

    invoke-direct {v1, p3, p2, p4}, Lcom/nianticproject/ingress/common/ui/elements/k;-><init>(Ljava/util/Collection;Lcom/nianticproject/ingress/common/ui/elements/l;Lcom/nianticproject/ingress/common/ui/elements/o;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/i;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setVisible(Z)V
    .locals 1
    .parameter

    .prologue
    .line 269
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/i;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setVisible(Z)V

    goto :goto_0
.end method
