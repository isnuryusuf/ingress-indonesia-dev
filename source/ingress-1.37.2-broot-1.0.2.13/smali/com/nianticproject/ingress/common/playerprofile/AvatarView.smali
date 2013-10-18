.class public final Lcom/nianticproject/ingress/common/playerprofile/AvatarView;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# instance fields
.field private final a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private final b:Lcom/nianticproject/ingress/common/j/av;

.field private final c:Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;

.field private d:Lcom/nianticproject/ingress/shared/ai;

.field private e:Lcom/nianticproject/ingress/common/playerprofile/j;

.field private f:I

.field private g:Lcom/nianticproject/ingress/common/j/d;

.field private h:Lcom/nianticproject/ingress/common/j/d;

.field private i:Z

.field private j:Z

.field private k:Z

.field private final l:Lcom/nianticproject/ingress/common/playerprofile/i;

.field private final m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private final n:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/j/av;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 124
    const/4 v1, 0x0

    sget-object v2, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;-><init>(Lcom/nianticproject/ingress/common/playerprofile/j;Lcom/nianticproject/ingress/shared/ai;ILcom/nianticproject/ingress/common/j/av;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/j/av;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/model/k;->r()Lcom/nianticproject/ingress/common/playerprofile/j;

    move-result-object v1

    invoke-interface {p1}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v2

    invoke-interface {p1}, Lcom/nianticproject/ingress/common/model/k;->l()I

    move-result v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;-><init>(Lcom/nianticproject/ingress/common/playerprofile/j;Lcom/nianticproject/ingress/shared/ai;ILcom/nianticproject/ingress/common/j/av;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 90
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/u;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/playerprofile/u;-><init>(Lcom/nianticproject/ingress/common/playerprofile/AvatarView;)V

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/model/l;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/j;Lcom/nianticproject/ingress/shared/ai;ILcom/nianticproject/ingress/common/j/av;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f00

    .line 144
    invoke-direct {p0, p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->d:Lcom/nianticproject/ingress/shared/ai;

    .line 145
    iput-object p5, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 146
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/av;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->b:Lcom/nianticproject/ingress/common/j/av;

    .line 147
    const-class v0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;

    invoke-virtual {p5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->c:Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;

    .line 149
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/i;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->c:Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/i;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->l:Lcom/nianticproject/ingress/common/playerprofile/i;

    .line 151
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 152
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->fill:Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setScaling(Lcom/badlogic/gdx/utils/Scaling;)V

    .line 153
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 154
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->fill:Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setScaling(Lcom/badlogic/gdx/utils/Scaling;)V

    .line 160
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 161
    new-array v1, v6, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-static {v3}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v1

    invoke-static {v3}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    .line 164
    new-array v1, v6, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->l:Lcom/nianticproject/ingress/common/playerprofile/i;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    .line 168
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/v;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/playerprofile/v;-><init>(Lcom/nianticproject/ingress/common/playerprofile/AvatarView;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 175
    invoke-virtual {p0, p2}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->a(Lcom/nianticproject/ingress/shared/ai;)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->a(Lcom/nianticproject/ingress/common/playerprofile/j;)V

    .line 177
    invoke-virtual {p0, p3}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->a(I)V

    .line 178
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f00

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->e:Lcom/nianticproject/ingress/common/playerprofile/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->e:Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/j;->b()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->e:Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/j;->c()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    move-result-object v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->f()V

    .line 223
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->i:Z

    .line 224
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->j:Z

    .line 225
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->k:Z

    .line 241
    :goto_0
    return-void

    .line 230
    :cond_1
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->k:Z

    .line 231
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->i:Z

    .line 232
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->j:Z

    .line 235
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->b:Lcom/nianticproject/ingress/common/j/av;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->e:Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/playerprofile/j;->b()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->getWidth()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/j/av;->a(Ljava/lang/String;I)Lcom/nianticproject/ingress/common/j/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->g:Lcom/nianticproject/ingress/common/j/d;

    .line 238
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->b:Lcom/nianticproject/ingress/common/j/av;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->e:Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/playerprofile/j;->c()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->getWidth()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/j/av;->a(Ljava/lang/String;I)Lcom/nianticproject/ingress/common/j/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->h:Lcom/nianticproject/ingress/common/j/d;

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 245
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->g()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 247
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->g:Lcom/nianticproject/ingress/common/j/d;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->g:Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/j/d;->d()V

    .line 249
    iput-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->g:Lcom/nianticproject/ingress/common/j/d;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->h:Lcom/nianticproject/ingress/common/j/d;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->h:Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/j/d;->d()V

    .line 253
    iput-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->h:Lcom/nianticproject/ingress/common/j/d;

    .line 255
    :cond_1
    return-void
.end method

.method private g()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 3

    .prologue
    .line 258
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/w;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->d:Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/ai;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 260
    :pswitch_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v2, "avatar-faction-enlightened"

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 265
    :goto_0
    return-object v0

    .line 263
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 265
    :pswitch_2
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v2, "avatar-faction-resistance"

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/playerprofile/j;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->e:Lcom/nianticproject/ingress/common/playerprofile/j;

    return-object v0
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 196
    iput p1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->f:I

    .line 197
    invoke-static {}, Lcom/nianticproject/ingress/shared/t;->b()I

    move-result v0

    int-to-float v0, v0

    .line 198
    int-to-float v1, p1

    div-float v0, v1, v0

    .line 199
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->l:Lcom/nianticproject/ingress/common/playerprofile/i;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/playerprofile/i;->a(F)V

    .line 200
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/playerprofile/j;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->e:Lcom/nianticproject/ingress/common/playerprofile/j;

    .line 187
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->e()V

    .line 188
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/ai;)V
    .locals 2
    .parameter

    .prologue
    .line 364
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->d:Lcom/nianticproject/ingress/shared/ai;

    invoke-static {v0, p1}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 368
    :cond_0
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->d:Lcom/nianticproject/ingress/shared/ai;

    .line 369
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->c:Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->d:Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;->getTintColor(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->l:Lcom/nianticproject/ingress/common/playerprofile/i;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/playerprofile/i;->a(Lcom/badlogic/gdx/graphics/Color;)V

    .line 371
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->g()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 372
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->e()V

    goto :goto_0
.end method

.method public final act(F)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 320
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->act(F)V

    .line 321
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->k:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->i:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->g:Lcom/nianticproject/ingress/common/j/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->g:Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/j/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->i:Z

    :cond_0
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->j:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->h:Lcom/nianticproject/ingress/common/j/d;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->h:Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/j/d;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->j:Z

    :cond_1
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->i:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->j:Z

    if-eqz v1, :cond_3

    :goto_0
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->k:Z

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->g:Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/j/d;->c()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/az;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->g:Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/j/d;->b()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->e:Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/playerprofile/j;->d()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/common/ui/widget/az;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;I)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->h:Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/j/d;->c()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/az;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->h:Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/j/d;->b()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->e:Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/playerprofile/j;->e()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/common/ui/widget/az;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;I)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 322
    :cond_2
    :goto_2
    return-void

    .line 321
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->g()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_2
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->f:I

    return v0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->f()V

    .line 326
    return-void
.end method

.method public final d()Lcom/nianticproject/ingress/shared/ai;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->d:Lcom/nianticproject/ingress/shared/ai;

    return-object v0
.end method
