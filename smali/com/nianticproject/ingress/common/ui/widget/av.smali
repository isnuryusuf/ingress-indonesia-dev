.class final Lcom/nianticproject/ingress/common/ui/widget/av;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/nianticproject/ingress/shared/r;

.field b:Lcom/nianticproject/ingress/gameentity/f;

.field final c:Lcom/nianticproject/ingress/common/ui/widget/d;

.field final d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field final e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field final f:Lcom/nianticproject/ingress/common/ui/widget/v;

.field final g:Lcom/nianticproject/ingress/common/ui/widget/az;

.field final h:Lcom/nianticproject/ingress/common/ui/widget/az;

.field final i:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field final j:Lcom/nianticproject/ingress/common/b/n;

.field k:Lcom/nianticproject/ingress/common/ui/widget/ah;

.field final synthetic l:Lcom/nianticproject/ingress/common/ui/widget/as;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/widget/as;Lcom/nianticproject/ingress/shared/r;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const v5, 0x3fc66666

    .line 117
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->l:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->a:Lcom/nianticproject/ingress/shared/r;

    .line 119
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/az;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/ui/widget/as;->a(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v1

    const-string/jumbo v2, "energy-bar-border-white"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/az;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->g:Lcom/nianticproject/ingress/common/ui/widget/az;

    .line 123
    new-instance v0, Lcom/nianticproject/ingress/common/b/n;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/b/n;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->j:Lcom/nianticproject/ingress/common/b/n;

    .line 124
    invoke-static {p1}, Lcom/nianticproject/ingress/common/ui/widget/as;->a(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v0

    const-string/jumbo v1, "energy-bar-full-replace"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->j:Lcom/nianticproject/ingress/common/b/n;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/nianticproject/ingress/common/b/n;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->i:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 126
    invoke-static {p1}, Lcom/nianticproject/ingress/common/ui/widget/as;->a(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v0

    const-string/jumbo v1, "energy-bar-full-replace"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/widget/as;->b()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/az;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/ui/widget/as;->a(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v2

    const-string/jumbo v3, "white"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/common/ui/widget/az;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->h:Lcom/nianticproject/ingress/common/ui/widget/az;

    .line 130
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, "LEVEL"

    invoke-static {p1}, Lcom/nianticproject/ingress/common/ui/widget/as;->a(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 131
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, "0"

    invoke-static {p1}, Lcom/nianticproject/ingress/common/ui/widget/as;->a(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 132
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/ui/widget/as;->a(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v2

    invoke-static {p1}, Lcom/nianticproject/ingress/common/ui/widget/as;->b(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/nianticproject/ingress/common/ui/l;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 133
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/ui/widget/as;->a(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v2

    invoke-static {p1}, Lcom/nianticproject/ingress/common/ui/widget/as;->c(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/nianticproject/ingress/common/ui/l;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 134
    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/v;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->g:Lcom/nianticproject/ingress/common/ui/widget/az;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->i:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->h:Lcom/nianticproject/ingress/common/ui/widget/az;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/nianticproject/ingress/common/ui/widget/v;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->f:Lcom/nianticproject/ingress/common/ui/widget/v;

    .line 135
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ea;->c:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/av;->a(Lcom/badlogic/gdx/graphics/Color;)V

    .line 137
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 139
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 140
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getPrefWidth()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 141
    const v2, 0x3ec28f5c

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getPrefHeight()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    .line 142
    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->f:Lcom/nianticproject/ingress/common/ui/widget/v;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/a/a/c;->d(F)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/a/a/c;->e(F)Lcom/a/a/c;

    .line 144
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 145
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 146
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const v2, 0x3ca3d70a

    invoke-static {v2}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->f(Lcom/a/a/e;)Lcom/a/a/c;

    .line 147
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/d;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/ui/widget/as;->d(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/d;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    .line 148
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pack()V

    .line 149
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v2

    mul-float/2addr v2, v5

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/ui/widget/d;->setWidth(F)V

    .line 150
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/d;->setHeight(F)V

    .line 151
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/aw;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/ui/widget/aw;-><init>(Lcom/nianticproject/ingress/common/ui/widget/av;Lcom/nianticproject/ingress/common/ui/widget/as;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/d;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/av;->a(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 160
    return-void
.end method

.method private a(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->g:Lcom/nianticproject/ingress/common/ui/widget/az;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/widget/az;->a(Lcom/badlogic/gdx/graphics/Color;)V

    .line 244
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->h:Lcom/nianticproject/ingress/common/ui/widget/az;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/widget/az;->a(Lcom/badlogic/gdx/graphics/Color;)V

    .line 245
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->j:Lcom/nianticproject/ingress/common/b/n;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/b/n;->a(Lcom/badlogic/gdx/graphics/Color;)V

    .line 246
    return-void
.end method


# virtual methods
.method final a(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 172
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->b:Lcom/nianticproject/ingress/gameentity/f;

    if-eq v0, p1, :cond_4

    move v0, v1

    .line 173
    :goto_0
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->b:Lcom/nianticproject/ingress/gameentity/f;

    .line 174
    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->l:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/widget/as;->f(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/nianticproject/ingress/common/ui/widget/av;

    move-result-object v3

    if-ne p0, v3, :cond_0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->l:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/widget/as;->g(Lcom/nianticproject/ingress/common/ui/widget/as;)V

    .line 178
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    .line 180
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nianticproject/ingress/common/h/c;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 182
    :cond_1
    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    invoke-virtual {v3, v1}, Lcom/nianticproject/ingress/common/ui/widget/d;->setVisible(Z)V

    .line 183
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->l:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/widget/as;->h(Lcom/nianticproject/ingress/common/ui/widget/as;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/d;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const v3, 0x3e99999a

    iput v3, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 186
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v3}, Lcom/nianticproject/ingress/common/ui/widget/d;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setVisible(Z)V

    .line 191
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setVisible(Z)V

    .line 192
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->f:Lcom/nianticproject/ingress/common/ui/widget/v;

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/v;->setVisible(Z)V

    .line 195
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->k:Lcom/nianticproject/ingress/common/ui/widget/ah;

    if-eqz v1, :cond_3

    .line 196
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->k:Lcom/nianticproject/ingress/common/ui/widget/ah;

    const/high16 v2, 0x3f00

    sget-object v3, Lcom/badlogic/gdx/math/Interpolation;->fade:Lcom/badlogic/gdx/math/Interpolation;

    invoke-static {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->removeActor()Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/ah;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 197
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->k:Lcom/nianticproject/ingress/common/ui/widget/ah;

    .line 239
    :cond_3
    :goto_1
    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/ea;->a(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/av;->a(Lcom/badlogic/gdx/graphics/Color;)V

    .line 240
    return-void

    :cond_4
    move v0, v2

    .line 172
    goto :goto_0

    .line 201
    :cond_5
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/d;->setVisible(Z)V

    .line 202
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/d;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const/high16 v3, 0x3f80

    iput v3, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 203
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/ui/widget/d;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 204
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setVisible(Z)V

    .line 205
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setVisible(Z)V

    .line 206
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->f:Lcom/nianticproject/ingress/common/ui/widget/v;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/v;->setVisible(Z)V

    .line 208
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    .line 209
    invoke-static {p1}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v3

    .line 210
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->l:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/ui/widget/as;->a(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v4

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->l:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-static {v5}, Lcom/nianticproject/ingress/common/ui/widget/as;->b(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getLevel()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/nianticproject/ingress/common/ui/l;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 212
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->l:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/ui/widget/as;->a(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v4

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->l:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-static {v5}, Lcom/nianticproject/ingress/common/ui/widget/as;->c(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getLevel()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/nianticproject/ingress/common/ui/l;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 213
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Energy;

    invoke-interface {p1, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/Energy;

    .line 214
    if-eqz v1, :cond_6

    .line 215
    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Energy;->getTotal()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getEnergyCapacity()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 216
    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->f:Lcom/nianticproject/ingress/common/ui/widget/v;

    invoke-virtual {v4, v1}, Lcom/nianticproject/ingress/common/ui/widget/v;->a(F)V

    .line 220
    :cond_6
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->k:Lcom/nianticproject/ingress/common/ui/widget/ah;

    if-nez v1, :cond_7

    .line 222
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->l:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/widget/as;->i(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    .line 223
    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/ah;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->l:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/ui/widget/as;->j(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/nianticproject/ingress/common/h/l;

    move-result-object v4

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->l:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-static {v5}, Lcom/nianticproject/ingress/common/ui/widget/as;->i(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/nianticproject/ingress/common/ui/widget/ah;-><init>(Lcom/nianticproject/ingress/common/h/l;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->k:Lcom/nianticproject/ingress/common/ui/widget/ah;

    .line 227
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->k:Lcom/nianticproject/ingress/common/ui/widget/ah;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/ah;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const/4 v4, 0x0

    iput v4, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 228
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->k:Lcom/nianticproject/ingress/common/ui/widget/ah;

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/ah;->setVisible(Z)V

    .line 229
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->k:Lcom/nianticproject/ingress/common/ui/widget/ah;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->l:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/widget/as;->i(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v2

    const v4, 0x3f4ccccd

    mul-float/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/ah;->setHeight(F)V

    .line 232
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->l:Lcom/nianticproject/ingress/common/ui/widget/as;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->k:Lcom/nianticproject/ingress/common/ui/widget/ah;

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/as;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 234
    :cond_7
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->k:Lcom/nianticproject/ingress/common/ui/widget/ah;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/ah;->a(Ljava/lang/String;)V

    .line 235
    invoke-static {v3}, Lcom/nianticproject/ingress/common/scanner/ea;->a(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->k:Lcom/nianticproject/ingress/common/ui/widget/ah;

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/widget/av;->k:Lcom/nianticproject/ingress/common/ui/widget/ah;

    invoke-virtual {v5}, Lcom/nianticproject/ingress/common/ui/widget/ah;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v1, v2, v4, v0, v5}, Lcom/nianticproject/ingress/common/ui/widget/ah;->setColor(FFFF)V

    move-object v0, v3

    goto/16 :goto_1
.end method
