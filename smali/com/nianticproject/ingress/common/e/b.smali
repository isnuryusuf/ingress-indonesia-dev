.class final Lcom/nianticproject/ingress/common/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/ac;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/e/a;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/e/a;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/nianticproject/ingress/common/e/b;->a:Lcom/nianticproject/ingress/common/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/e/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/e/b;-><init>(Lcom/nianticproject/ingress/common/e/a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/high16 v10, 0x4120

    .line 80
    const-string/jumbo v0, "large"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    .line 81
    const-string/jumbo v1, "large"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 83
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 84
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 85
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setHeight(F)V

    .line 86
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v2

    const/high16 v4, 0x40a0

    invoke-virtual {v2, v4}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    .line 87
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v4, "Cheater Store"

    invoke-direct {v2, v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->i()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    .line 89
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 91
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 92
    const-string/jumbo v2, "transparent-outline"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 93
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->f()Lcom/a/a/c;

    .line 94
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 96
    sget-object v2, Lcom/nianticproject/ingress/common/gameentity/g;->a:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/shared/af;

    .line 97
    new-instance v6, Lcom/nianticproject/ingress/common/ui/widget/w;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/e/b;->a:Lcom/nianticproject/ingress/common/e/a;

    invoke-static {v7, v2}, Lcom/nianticproject/ingress/common/e/a;->a(Lcom/nianticproject/ingress/common/e/a;Lcom/nianticproject/ingress/shared/af;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/nianticproject/ingress/common/ui/widget/w;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iget-object v7, p0, Lcom/nianticproject/ingress/common/e/b;->a:Lcom/nianticproject/ingress/common/e/a;

    invoke-static {v7}, Lcom/nianticproject/ingress/common/e/a;->b(Lcom/nianticproject/ingress/common/e/a;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/a/a/c;->d()Lcom/a/a/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/a/a/c;->e()Lcom/a/a/c;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/af;->a()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/a/a/c;->n()Lcom/a/a/c;

    new-instance v8, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v9, "-"

    invoke-direct {v8, v9, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    new-instance v9, Lcom/nianticproject/ingress/common/e/h;

    invoke-direct {v9, p0, v2}, Lcom/nianticproject/ingress/common/e/h;-><init>(Lcom/nianticproject/ingress/common/e/b;Lcom/nianticproject/ingress/shared/af;)V

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    new-instance v6, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v8, "+"

    invoke-direct {v6, v8, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    new-instance v8, Lcom/nianticproject/ingress/common/e/i;

    invoke-direct {v8, p0, v2}, Lcom/nianticproject/ingress/common/e/i;-><init>(Lcom/nianticproject/ingress/common/e/b;Lcom/nianticproject/ingress/shared/af;)V

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 98
    iget-object v6, p0, Lcom/nianticproject/ingress/common/e/b;->a:Lcom/nianticproject/ingress/common/e/a;

    invoke-static {v6}, Lcom/nianticproject/ingress/common/e/a;->a(Lcom/nianticproject/ingress/common/e/a;)Lcom/google/a/c/du;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/a/c/du;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->f()Lcom/a/a/c;

    .line 100
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    goto/16 :goto_0

    .line 104
    :cond_1
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 105
    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/c;->f()Lcom/a/a/c;

    .line 106
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 107
    iget-object v4, p0, Lcom/nianticproject/ingress/common/e/b;->a:Lcom/nianticproject/ingress/common/e/a;

    new-instance v5, Lcom/nianticproject/ingress/common/ui/widget/w;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/e/b;->a:Lcom/nianticproject/ingress/common/e/a;

    invoke-static {v6}, Lcom/nianticproject/ingress/common/e/a;->g(Lcom/nianticproject/ingress/common/e/a;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/nianticproject/ingress/common/ui/widget/w;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-static {v4, v5}, Lcom/nianticproject/ingress/common/e/a;->b(Lcom/nianticproject/ingress/common/e/a;Lcom/nianticproject/ingress/common/ui/widget/w;)Lcom/nianticproject/ingress/common/ui/widget/w;

    new-instance v4, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v5, "-"

    invoke-direct {v4, v5, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    new-instance v5, Lcom/nianticproject/ingress/common/e/f;

    invoke-direct {v5, p0}, Lcom/nianticproject/ingress/common/e/f;-><init>(Lcom/nianticproject/ingress/common/e/b;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v5, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v6, "+"

    invoke-direct {v5, v6, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    new-instance v6, Lcom/nianticproject/ingress/common/e/g;

    invoke-direct {v6, p0}, Lcom/nianticproject/ingress/common/e/g;-><init>(Lcom/nianticproject/ingress/common/e/b;)V

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v7, "Resource Level"

    invoke-direct {v6, v7, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/a/c;->n()Lcom/a/a/c;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/c;->n()Lcom/a/a/c;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/e/b;->a:Lcom/nianticproject/ingress/common/e/a;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/e/a;->i(Lcom/nianticproject/ingress/common/e/a;)Lcom/nianticproject/ingress/common/ui/widget/w;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/c;->n()Lcom/a/a/c;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/c;->n()Lcom/a/a/c;

    .line 108
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 109
    iget-object v4, p0, Lcom/nianticproject/ingress/common/e/b;->a:Lcom/nianticproject/ingress/common/e/a;

    new-instance v5, Lcom/nianticproject/ingress/common/ui/widget/w;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/e/b;->a:Lcom/nianticproject/ingress/common/e/a;

    invoke-static {v6}, Lcom/nianticproject/ingress/common/e/a;->c(Lcom/nianticproject/ingress/common/e/a;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/nianticproject/ingress/common/ui/widget/w;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-static {v4, v5}, Lcom/nianticproject/ingress/common/e/a;->a(Lcom/nianticproject/ingress/common/e/a;Lcom/nianticproject/ingress/common/ui/widget/w;)Lcom/nianticproject/ingress/common/ui/widget/w;

    new-instance v4, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v5, "-"

    invoke-direct {v4, v5, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    new-instance v5, Lcom/nianticproject/ingress/common/e/c;

    invoke-direct {v5, p0}, Lcom/nianticproject/ingress/common/e/c;-><init>(Lcom/nianticproject/ingress/common/e/b;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v5, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v6, "+"

    invoke-direct {v5, v6, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    new-instance v6, Lcom/nianticproject/ingress/common/e/e;

    invoke-direct {v6, p0}, Lcom/nianticproject/ingress/common/e/e;-><init>(Lcom/nianticproject/ingress/common/e/b;)V

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v7, "Access Level"

    invoke-direct {v6, v7, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->n()Lcom/a/a/c;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->n()Lcom/a/a/c;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/e/b;->a:Lcom/nianticproject/ingress/common/e/a;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/e/a;->e(Lcom/nianticproject/ingress/common/e/a;)Lcom/nianticproject/ingress/common/ui/widget/w;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->n()Lcom/a/a/c;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->n()Lcom/a/a/c;

    .line 110
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 112
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 113
    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->f()Lcom/a/a/c;

    .line 114
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 115
    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v4, "XM Fill up"

    invoke-direct {v2, v4, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    new-instance v4, Lcom/nianticproject/ingress/common/e/j;

    invoke-direct {v4, p0}, Lcom/nianticproject/ingress/common/e/j;-><init>(Lcom/nianticproject/ingress/common/e/b;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->n()Lcom/a/a/c;

    .line 116
    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v4, "XM Empty"

    invoke-direct {v2, v4, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    new-instance v4, Lcom/nianticproject/ingress/common/e/k;

    invoke-direct {v4, p0}, Lcom/nianticproject/ingress/common/e/k;-><init>(Lcom/nianticproject/ingress/common/e/b;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->n()Lcom/a/a/c;

    .line 117
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 118
    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v4, "Back"

    invoke-direct {v2, v4, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    new-instance v4, Lcom/nianticproject/ingress/common/e/d;

    invoke-direct {v4, p0}, Lcom/nianticproject/ingress/common/e/d;-><init>(Lcom/nianticproject/ingress/common/e/b;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->n()Lcom/a/a/c;

    .line 119
    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v4, "Checkout"

    invoke-direct {v2, v4, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    new-instance v0, Lcom/nianticproject/ingress/common/e/l;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/e/l;-><init>(Lcom/nianticproject/ingress/common/e/b;)V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    .line 121
    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 122
    return-void
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public final dispose()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method
