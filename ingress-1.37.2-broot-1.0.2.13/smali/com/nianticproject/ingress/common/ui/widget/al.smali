.class public final Lcom/nianticproject/ingress/common/ui/widget/al;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 42
    const-string/jumbo v0, "Level"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->e:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "Range"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->f:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "Energy"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->g:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->h:Z

    .line 46
    iput v1, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->i:I

    .line 47
    iput v1, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->j:I

    .line 48
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->k:Z

    .line 49
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->l:Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->m:Z

    .line 54
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 55
    iput p2, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->a:I

    .line 57
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 58
    return-void
.end method

.method private static a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/m;)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 224
    sget-object v0, Lcom/nianticproject/ingress/common/ui/widget/am;->a:[I

    invoke-virtual {p1}, Lcom/nianticproject/ingress/gameentity/components/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 231
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->j()Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/nianticproject/ingress/gameentity/components/g;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/m;Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 226
    :pswitch_0
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->j()Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/gameentity/components/k;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;)J

    move-result-wide v0

    goto :goto_0

    .line 228
    :pswitch_1
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->j()Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/gameentity/components/k;->b(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;)J

    move-result-wide v0

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;JLjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 286
    if-eqz p3, :cond_1

    .line 287
    const-string/jumbo v1, "%s%s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_0

    const-string/jumbo v0, "+"

    :goto_0
    aput-object v0, v2, v5

    aput-object p3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_1
    invoke-static {p0, p1, p2, v0}, Lcom/nianticproject/ingress/common/ui/widget/al;->b(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;JLjava/lang/String;)V

    .line 292
    return-void

    .line 287
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 289
    :cond_1
    const-string/jumbo v0, "%+d"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    const v0, -0x41f0a3d7

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getPrefHeight()F

    move-result v1

    mul-float/2addr v0, v1

    .line 244
    const v1, -0x428a3d71

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getPrefHeight()F

    move-result v2

    mul-float/2addr v1, v2

    .line 245
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    .line 246
    const/high16 v0, 0x4040

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v0

    .line 247
    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getHeight()F

    move-result v1

    const v2, 0x3e4ccccd

    mul-float/2addr v1, v2

    .line 248
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-direct {v3, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    .line 249
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->k:Z

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v4, ":"

    invoke-direct {v3, v4, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 252
    :cond_0
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 253
    invoke-virtual {v2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/c;->k()Lcom/a/a/c;

    .line 254
    if-eqz p4, :cond_1

    .line 255
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v4, "["

    invoke-virtual {p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 256
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v5, "]"

    invoke-virtual {p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 258
    invoke-virtual {v3, p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 259
    invoke-virtual {v4, p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 261
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/c;->k()Lcom/a/a/c;

    .line 262
    invoke-virtual {v2, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/c;->k()Lcom/a/a/c;

    .line 263
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/c;->k()Lcom/a/a/c;

    .line 265
    :cond_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pack()V

    .line 266
    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    .line 267
    return-void
.end method

.method private static b(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;JLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setVisible(Z)V

    .line 296
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 297
    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    .line 298
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->GREEN:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 304
    :goto_0
    return-void

    .line 299
    :cond_0
    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    .line 300
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    .line 302
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "LVL"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->e:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "RNG"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->f:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "ENR"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->g:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 274
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/g;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->h:Z

    .line 99
    invoke-static {p1, p2}, Lcom/nianticproject/ingress/gameentity/components/k;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/g;)Lcom/google/a/a/ak;

    move-result-object v1

    .line 100
    iget-object v0, v1, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->i:I

    .line 101
    iget-object v0, v1, Lcom/google/a/a/ak;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->j:I

    .line 102
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/gameentity/f;Lcom/badlogic/gdx/graphics/Color;Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/p;)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/al;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/al;->clear()V

    .line 116
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clear()V

    .line 118
    const-class v2, Lcom/nianticproject/ingress/gameentity/components/Modable;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/nianticproject/ingress/gameentity/components/Modable;

    .line 119
    if-nez p4, :cond_1

    move-object/from16 p4, v8

    .line 123
    :cond_1
    new-instance v9, Lcom/nianticproject/ingress/gameentity/components/p;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Lcom/nianticproject/ingress/gameentity/components/p;-><init>(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 124
    if-nez p5, :cond_2

    move-object/from16 p5, v9

    .line 128
    :cond_2
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v3, "portal-details-stats"

    const-class v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 130
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->l:Z

    if-eqz v2, :cond_3

    .line 132
    const-class v2, Lcom/nianticproject/ingress/gameentity/components/Portal;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 133
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLevelName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 135
    move-object/from16 v0, p5

    if-eq v0, v9, :cond_6

    .line 136
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v3, ""

    invoke-direct {v6, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 138
    invoke-static/range {p5 .. p5}, Lcom/nianticproject/ingress/gameentity/components/k;->a(Ljava/lang/Iterable;)I

    move-result v3

    .line 139
    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLevel()I

    move-result v2

    sub-int v2, v3, v2

    int-to-long v2, v2

    const/4 v7, 0x0

    invoke-static {v6, v2, v3, v7}, Lcom/nianticproject/ingress/common/ui/widget/al;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;JLjava/lang/String;)V

    .line 143
    :goto_1
    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->e:Ljava/lang/String;

    move-object v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/nianticproject/ingress/common/ui/widget/al;->a(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Lcom/badlogic/gdx/graphics/Color;)V

    .line 146
    :cond_3
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->m:Z

    if-eqz v2, :cond_4

    .line 148
    invoke-static {v9, v8}, Lcom/nianticproject/ingress/gameentity/components/k;->a(Ljava/lang/Iterable;Lcom/nianticproject/ingress/gameentity/components/Modable;)J

    move-result-wide v2

    .line 149
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/gameentity/components/k;->a(Ljava/lang/Iterable;Lcom/nianticproject/ingress/gameentity/components/Modable;)J

    move-result-wide v9

    .line 150
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    long-to-float v6, v2

    invoke-static {v6}, Lcom/nianticproject/ingress/common/ui/l;->a(F)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 152
    cmp-long v6, v9, v2

    if-eqz v6, :cond_7

    .line 153
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v7, ""

    invoke-direct {v6, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 154
    const-wide/16 v11, 0x0

    sub-long v2, v9, v2

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 155
    long-to-float v7, v2

    invoke-static {v7}, Lcom/nianticproject/ingress/common/ui/l;->a(F)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v2, v3, v7}, Lcom/nianticproject/ingress/common/ui/widget/al;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;JLjava/lang/String;)V

    .line 159
    :goto_2
    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->f:Ljava/lang/String;

    move-object v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/nianticproject/ingress/common/ui/widget/al;->a(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Lcom/badlogic/gdx/graphics/Color;)V

    .line 162
    :cond_4
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->h:Z

    if-eqz v2, :cond_5

    .line 163
    const-string/jumbo v2, "%d / %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->i:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->j:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 164
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-direct {v5, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 165
    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->g:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/nianticproject/ingress/common/ui/widget/al;->a(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Lcom/badlogic/gdx/graphics/Color;)V

    .line 168
    :cond_5
    iget v2, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->a:I

    if-lez v2, :cond_9

    .line 170
    const/4 v9, 0x0

    .line 171
    invoke-static {}, Lcom/nianticproject/ingress/gameentity/components/m;->values()[Lcom/nianticproject/ingress/gameentity/components/m;

    move-result-object v11

    array-length v12, v11

    const/4 v2, 0x0

    move v10, v2

    :goto_3
    if-ge v10, v12, :cond_9

    aget-object v2, v11, v10

    .line 172
    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/nianticproject/ingress/common/ui/widget/al;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/m;)J

    move-result-wide v6

    .line 173
    invoke-virtual {v2}, Lcom/nianticproject/ingress/gameentity/components/m;->d()Z

    move-result v3

    if-eqz v3, :cond_c

    const-wide/16 v13, 0x0

    cmp-long v3, v6, v13

    if-lez v3, :cond_c

    .line 174
    invoke-static {v8, v2}, Lcom/nianticproject/ingress/common/ui/widget/al;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/m;)J

    move-result-wide v13

    .line 177
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v13, v14}, Lcom/nianticproject/ingress/gameentity/components/m;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 180
    sub-long v13, v6, v13

    .line 181
    const-wide/16 v6, 0x0

    cmp-long v3, v13, v6

    if-eqz v3, :cond_8

    .line 182
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v3, ""

    invoke-direct {v6, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 183
    invoke-virtual {v2, v13, v14}, Lcom/nianticproject/ingress/gameentity/components/m;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v13, v14, v3}, Lcom/nianticproject/ingress/common/ui/widget/al;->b(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;JLjava/lang/String;)V

    .line 188
    :goto_4
    invoke-virtual {v2}, Lcom/nianticproject/ingress/gameentity/components/m;->c()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-object/from16 v7, p3

    .line 189
    invoke-direct/range {v2 .. v7}, Lcom/nianticproject/ingress/common/ui/widget/al;->a(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Lcom/badlogic/gdx/graphics/Color;)V

    .line 190
    add-int/lit8 v2, v9, 0x1

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->a:I

    if-eq v2, v3, :cond_9

    .line 191
    :goto_5
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    move v9, v2

    goto :goto_3

    .line 141
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 157
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 185
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 196
    :cond_9
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/al;->row()Lcom/a/a/c;

    .line 197
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p0, v2}, Lcom/nianticproject/ingress/common/ui/widget/al;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->o()Lcom/a/a/c;

    .line 200
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/ai;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 202
    const/high16 v2, 0x4040

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v3

    .line 203
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    if-nez v2, :cond_a

    .line 204
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v4, "portal-enemy-tag"

    const-class v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 205
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v5, "ENEMY PORTAL"

    invoke-direct {v4, v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 207
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v5, "transparent-no-outline"

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    .line 210
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v5, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 211
    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 212
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 213
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->k()Lcom/a/a/c;

    .line 216
    :cond_a
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/al;->row()Lcom/a/a/c;

    .line 217
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p0, v2}, Lcom/nianticproject/ingress/common/ui/widget/al;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->o()Lcom/a/a/c;

    .line 220
    :cond_b
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/al;->pack()V

    goto/16 :goto_0

    :cond_c
    move v2, v9

    goto/16 :goto_5
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->k:Z

    .line 74
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->l:Z

    .line 81
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/al;->m:Z

    .line 90
    return-void
.end method
