.class public Lcom/nianticproject/ingress/common/gameentity/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

.field public static final c:Lcom/nianticproject/ingress/common/gameentity/f;

.field public static final d:Lcom/nianticproject/ingress/common/gameentity/f;

.field private static final e:Lcom/nianticproject/ingress/common/w/aa;

.field private static final f:Lcom/badlogic/gdx/graphics/Color;

.field private static final g:Lcom/badlogic/gdx/graphics/Color;

.field private static h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    const v3, 0x3f4ccccd

    .line 73
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/gameentity/g;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/gameentity/g;->e:Lcom/nianticproject/ingress/common/w/aa;

    .line 88
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/af;

    const/4 v1, 0x0

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->a:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->b:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->m:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->c:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->d:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->e:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->f:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->g:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->h:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->i:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->j:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->k:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->l:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/c/jc;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/gameentity/g;->a:Ljava/util/HashSet;

    .line 104
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v3, v3, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/gameentity/g;->f:Lcom/badlogic/gdx/graphics/Color;

    .line 105
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f70a3d7

    const v2, 0x3f47ae14

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/gameentity/g;->g:Lcom/badlogic/gdx/graphics/Color;

    .line 111
    new-instance v0, Lcom/nianticproject/ingress/common/gameentity/f;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/gameentity/f;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/gameentity/g;->c:Lcom/nianticproject/ingress/common/gameentity/f;

    .line 114
    new-instance v0, Lcom/nianticproject/ingress/common/gameentity/d;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/gameentity/d;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/gameentity/g;->d:Lcom/nianticproject/ingress/common/gameentity/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method public static a(Lcom/nianticproject/ingress/gameentity/components/Resource;I)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 388
    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v0

    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getRarity()Lcom/nianticproject/ingress/gameentity/components/l;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/nianticproject/ingress/common/gameentity/g;->b(Lcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/components/l;I)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v2, Lcom/nianticproject/ingress/common/gameentity/g;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget-object v2, Lcom/badlogic/gdx/utils/Scaling;->none:Lcom/badlogic/gdx/utils/Scaling;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;)V

    return-object v0
.end method

.method public static a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/nianticproject/ingress/gameentity/f;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 231
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    .line 232
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v1

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getRarity()Lcom/nianticproject/ingress/gameentity/components/l;

    move-result-object v0

    invoke-static {p1}, Lcom/nianticproject/ingress/common/gameentity/g;->b(Lcom/nianticproject/ingress/gameentity/f;)I

    move-result v2

    invoke-static {p0, v1, v0, v2}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/components/l;I)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/components/l;I)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 248
    invoke-static {p1, p2, p3}, Lcom/nianticproject/ingress/common/gameentity/g;->b(Lcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/components/l;I)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 3
    .parameter

    .prologue
    .line 190
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    .line 191
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v1

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getRarity()Lcom/nianticproject/ingress/gameentity/components/l;

    move-result-object v0

    invoke-static {p0}, Lcom/nianticproject/ingress/common/gameentity/g;->b(Lcom/nianticproject/ingress/gameentity/f;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/components/l;I)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/components/l;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 179
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/components/l;I)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/components/l;I)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    sget-object v0, Lcom/nianticproject/ingress/common/gameentity/g;->b:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mod_button_rarity-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/af;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    .line 207
    if-nez v0, :cond_1

    .line 208
    sget-object v0, Lcom/nianticproject/ingress/shared/ag;->a:Lcom/nianticproject/ingress/shared/ah;

    sget-object v1, Lcom/nianticproject/ingress/shared/ah;->a:Lcom/nianticproject/ingress/shared/ah;

    if-ne v0, v1, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected resource type in texture get: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/gameentity/g;->e:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Unexpected resource type in texture get.  Using empty as default."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/nianticproject/ingress/common/gameentity/g;->b:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    const-string/jumbo v1, "mod_button-empty"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    .line 217
    :cond_1
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-static {v1, p0, p1, p2}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/components/l;I)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/nianticproject/ingress/gameentity/components/Resource;)Lcom/nianticproject/ingress/common/c/ba;
    .locals 4
    .parameter

    .prologue
    .line 471
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lcom/nianticproject/ingress/common/gameentity/h;->a:[I

    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/af;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 529
    sget-object v0, Lcom/nianticproject/ingress/shared/ag;->a:Lcom/nianticproject/ingress/shared/ah;

    sget-object v1, Lcom/nianticproject/ingress/shared/ah;->b:Lcom/nianticproject/ingress/shared/ah;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/shared/ag;->a:Lcom/nianticproject/ingress/shared/ah;

    sget-object v1, Lcom/nianticproject/ingress/shared/ah;->c:Lcom/nianticproject/ingress/shared/ah;

    if-ne v0, v1, :cond_2

    .line 531
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->ea:Lcom/nianticproject/ingress/common/c/ba;

    :goto_0
    return-object v0

    .line 475
    :pswitch_0
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->dQ:Lcom/nianticproject/ingress/common/c/ba;

    goto :goto_0

    .line 478
    :pswitch_1
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->ep:Lcom/nianticproject/ingress/common/c/ba;

    goto :goto_0

    .line 481
    :pswitch_2
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->eq:Lcom/nianticproject/ingress/common/c/ba;

    goto :goto_0

    .line 484
    :pswitch_3
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->bX:Lcom/nianticproject/ingress/common/c/ba;

    goto :goto_0

    .line 487
    :pswitch_4
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->dE:Lcom/nianticproject/ingress/common/c/ba;

    goto :goto_0

    .line 490
    :pswitch_5
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->dJ:Lcom/nianticproject/ingress/common/c/ba;

    goto :goto_0

    .line 493
    :pswitch_6
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->dW:Lcom/nianticproject/ingress/common/c/ba;

    goto :goto_0

    .line 496
    :pswitch_7
    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_1

    .line 498
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/FlipCard;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/FlipCard;

    .line 499
    if-eqz v0, :cond_1

    .line 500
    sget-object v1, Lcom/nianticproject/ingress/common/gameentity/h;->b:[I

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/FlipCard;->getFlipCardType()Lcom/nianticproject/ingress/gameentity/components/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/gameentity/components/c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 509
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Issue getting a SoundAsset for a FlipCard, resource: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :pswitch_8
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->bz:Lcom/nianticproject/ingress/common/c/ba;

    goto :goto_0

    .line 504
    :pswitch_9
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->bA:Lcom/nianticproject/ingress/common/c/ba;

    goto :goto_0

    .line 513
    :pswitch_a
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->bV:Lcom/nianticproject/ingress/common/c/ba;

    goto :goto_0

    .line 516
    :pswitch_b
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->bB:Lcom/nianticproject/ingress/common/c/ba;

    goto :goto_0

    .line 518
    :pswitch_c
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->bG:Lcom/nianticproject/ingress/common/c/ba;

    goto :goto_0

    .line 520
    :pswitch_d
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->cH:Lcom/nianticproject/ingress/common/c/ba;

    goto :goto_0

    .line 522
    :pswitch_e
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->dZ:Lcom/nianticproject/ingress/common/c/ba;

    goto :goto_0

    .line 525
    :pswitch_f
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->ea:Lcom/nianticproject/ingress/common/c/ba;

    goto :goto_0

    .line 533
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No sound asset for resource: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_e
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_f
    .end packed-switch

    .line 500
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static a(Lcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/common/gameentity/c;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 317
    sget-object v0, Lcom/nianticproject/ingress/common/gameentity/h;->a:[I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/af;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 363
    new-instance v0, Lcom/nianticproject/ingress/common/gameentity/c;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->w:Lcom/nianticproject/ingress/common/j/ai;

    invoke-direct {v0, v1, v2, v2}, Lcom/nianticproject/ingress/common/gameentity/c;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;)V

    :goto_0
    return-object v0

    .line 319
    :pswitch_0
    new-instance v0, Lcom/nianticproject/ingress/common/gameentity/c;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->o:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/ag;->p:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/ag;->r:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/gameentity/c;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 321
    :pswitch_1
    new-instance v0, Lcom/nianticproject/ingress/common/gameentity/c;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->s:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/ag;->t:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/ag;->G:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/gameentity/c;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 324
    :pswitch_2
    new-instance v0, Lcom/nianticproject/ingress/common/gameentity/c;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->a:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/ag;->b:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/ag;->f:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/gameentity/c;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 326
    :pswitch_3
    new-instance v0, Lcom/nianticproject/ingress/common/gameentity/c;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->k:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/ag;->l:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/ag;->n:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/gameentity/c;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 328
    :pswitch_4
    new-instance v0, Lcom/nianticproject/ingress/common/gameentity/c;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->y:Lcom/nianticproject/ingress/common/j/ai;

    invoke-direct {v0, v1, v2, v2}, Lcom/nianticproject/ingress/common/gameentity/c;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 330
    :pswitch_5
    new-instance v0, Lcom/nianticproject/ingress/common/gameentity/c;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->B:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/ag;->C:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/ag;->K:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/gameentity/c;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 332
    :pswitch_6
    new-instance v0, Lcom/nianticproject/ingress/common/gameentity/c;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->P:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/ag;->Q:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/ag;->G:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/gameentity/c;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 339
    :pswitch_7
    if-nez p1, :cond_0

    .line 340
    new-instance v0, Lcom/nianticproject/ingress/common/gameentity/c;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->w:Lcom/nianticproject/ingress/common/j/ai;

    invoke-direct {v0, v1, v2, v2}, Lcom/nianticproject/ingress/common/gameentity/c;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 343
    :cond_0
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/FlipCard;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/FlipCard;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/FlipCard;->getFlipCardType()Lcom/nianticproject/ingress/gameentity/components/c;

    move-result-object v0

    .line 345
    sget-object v1, Lcom/nianticproject/ingress/common/gameentity/h;->b:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/gameentity/components/c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 352
    new-instance v0, Lcom/nianticproject/ingress/common/gameentity/c;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->w:Lcom/nianticproject/ingress/common/j/ai;

    invoke-direct {v0, v1, v2, v2}, Lcom/nianticproject/ingress/common/gameentity/c;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 347
    :pswitch_8
    new-instance v0, Lcom/nianticproject/ingress/common/gameentity/c;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->E:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/ag;->I:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/ag;->G:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/gameentity/c;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;)V

    goto/16 :goto_0

    .line 349
    :pswitch_9
    new-instance v0, Lcom/nianticproject/ingress/common/gameentity/c;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->H:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/ag;->I:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/ag;->G:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/gameentity/c;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;)V

    goto/16 :goto_0

    .line 355
    :pswitch_a
    new-instance v0, Lcom/nianticproject/ingress/common/gameentity/c;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->Y:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/ag;->Z:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/ag;->G:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/gameentity/c;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;)V

    goto/16 :goto_0

    .line 357
    :pswitch_b
    new-instance v0, Lcom/nianticproject/ingress/common/gameentity/c;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->S:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/ag;->T:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/ag;->G:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/gameentity/c;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;)V

    goto/16 :goto_0

    .line 359
    :pswitch_c
    new-instance v0, Lcom/nianticproject/ingress/common/gameentity/c;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->V:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/ag;->W:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/ag;->G:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/gameentity/c;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;)V

    goto/16 :goto_0

    .line 361
    :pswitch_d
    new-instance v0, Lcom/nianticproject/ingress/common/gameentity/c;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->ab:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/ag;->ac:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/ag;->G:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/gameentity/c;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;)V

    goto/16 :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 345
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static a(Lcom/nianticproject/ingress/shared/af;Ljava/lang/Object;)Lcom/nianticproject/ingress/common/j/ai;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 585
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    sget-object v0, Lcom/nianticproject/ingress/common/gameentity/h;->a:[I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/af;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 623
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No resource unit mesh for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/af;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :pswitch_0
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->e:Lcom/nianticproject/ingress/common/j/ai;

    .line 621
    :goto_0
    return-object v0

    .line 590
    :pswitch_1
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->q:Lcom/nianticproject/ingress/common/j/ai;

    goto :goto_0

    .line 592
    :pswitch_2
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->u:Lcom/nianticproject/ingress/common/j/ai;

    goto :goto_0

    .line 594
    :pswitch_3
    if-eqz p1, :cond_0

    .line 595
    check-cast p1, Lcom/nianticproject/ingress/gameentity/components/c;

    .line 596
    sget-object v0, Lcom/nianticproject/ingress/common/gameentity/h;->b:[I

    invoke-virtual {p1}, Lcom/nianticproject/ingress/gameentity/components/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 603
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "FlipCards require param to be the FlipCardType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :pswitch_4
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->F:Lcom/nianticproject/ingress/common/j/ai;

    goto :goto_0

    .line 600
    :pswitch_5
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->J:Lcom/nianticproject/ingress/common/j/ai;

    goto :goto_0

    .line 605
    :pswitch_6
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->R:Lcom/nianticproject/ingress/common/j/ai;

    goto :goto_0

    .line 607
    :pswitch_7
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->z:Lcom/nianticproject/ingress/common/j/ai;

    goto :goto_0

    .line 609
    :pswitch_8
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->i:Lcom/nianticproject/ingress/common/j/ai;

    goto :goto_0

    .line 611
    :pswitch_9
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->D:Lcom/nianticproject/ingress/common/j/ai;

    goto :goto_0

    .line 613
    :pswitch_a
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->m:Lcom/nianticproject/ingress/common/j/ai;

    goto :goto_0

    .line 615
    :pswitch_b
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aa:Lcom/nianticproject/ingress/common/j/ai;

    goto :goto_0

    .line 617
    :pswitch_c
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->U:Lcom/nianticproject/ingress/common/j/ai;

    goto :goto_0

    .line 619
    :pswitch_d
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->X:Lcom/nianticproject/ingress/common/j/ai;

    goto :goto_0

    .line 621
    :pswitch_e
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->ad:Lcom/nianticproject/ingress/common/j/ai;

    goto :goto_0

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_6
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_e
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_9
        :pswitch_3
        :pswitch_8
    .end packed-switch

    .line 596
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Ljava/util/Collection;)Ljava/util/LinkedList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nianticproject/ingress/common/c/ba;",
            ">;"
        }
    .end annotation

    .prologue
    .line 729
    invoke-static {p0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 730
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 732
    :cond_0
    const/4 v0, 0x0

    .line 745
    :goto_0
    return-object v0

    .line 735
    :cond_1
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v2

    .line 736
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 737
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 738
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->h()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v4, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {v0, v4}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/nianticproject/ingress/gameentity/components/Resource;)Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v0

    .line 740
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 741
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 742
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 745
    goto :goto_0
.end method

.method public static a(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    .line 136
    sput-object p0, Lcom/nianticproject/ingress/common/gameentity/g;->b:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    const-string/jumbo v0, "mod_button-empty"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/gameentity/g;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 138
    return-void
.end method

.method public static a(Lcom/nianticproject/ingress/shared/ae;)V
    .locals 3
    .parameter

    .prologue
    .line 776
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 777
    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->j:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->bF:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->eb:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    sget-object v1, Lcom/nianticproject/ingress/common/gameentity/h;->c:[I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/ae;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 808
    :goto_0
    new-instance v1, Lcom/nianticproject/ingress/common/c/bo;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/c/bo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/c/bo;->a(Ljava/util/Collection;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/bo;->a(Z)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bp;->a:Lcom/nianticproject/ingress/common/c/bp;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/bo;->a(Lcom/nianticproject/ingress/common/c/bp;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bo;->f()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    .line 821
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 822
    return-void

    .line 782
    :pswitch_0
    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Ljava/util/List;I)V

    goto :goto_0

    .line 785
    :pswitch_1
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Ljava/util/List;I)V

    goto :goto_0

    .line 788
    :pswitch_2
    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Ljava/util/List;I)V

    goto :goto_0

    .line 791
    :pswitch_3
    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Ljava/util/List;I)V

    goto :goto_0

    .line 794
    :pswitch_4
    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Ljava/util/List;I)V

    goto :goto_0

    .line 797
    :pswitch_5
    const/16 v1, 0x78

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Ljava/util/List;I)V

    goto :goto_0

    .line 800
    :pswitch_6
    const/16 v1, 0xf0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Ljava/util/List;I)V

    goto :goto_0

    .line 803
    :pswitch_7
    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Ljava/util/List;I)V

    goto :goto_0

    .line 806
    :pswitch_8
    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->eo:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->bb:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 780
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static a(Ljava/util/List;I)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/c/ba;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 825
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->aZ:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    const/16 v0, 0x3c

    if-le p1, v0, :cond_0

    .line 827
    div-int/lit8 v0, p1, 0x3c

    int-to-double v0, v0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/w/ak;->a(D)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 828
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->ca:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    :goto_0
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->dO:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    return-void

    .line 830
    :cond_0
    int-to-double v0, p1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/w/ak;->a(D)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 831
    sget-object v0, Lcom/nianticproject/ingress/common/c/ba;->dU:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Lcom/nianticproject/ingress/shared/af;)Z
    .locals 2
    .parameter

    .prologue
    .line 118
    sget-object v0, Lcom/nianticproject/ingress/common/gameentity/h;->a:[I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/af;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 120
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lcom/nianticproject/ingress/gameentity/f;)I
    .locals 2
    .parameter

    .prologue
    .line 288
    invoke-static {p0}, Lcom/nianticproject/ingress/common/gameentity/g;->i(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/components/Resource;

    move-result-object v0

    .line 289
    instance-of v1, v0, Lcom/nianticproject/ingress/gameentity/components/d;

    if-eqz v1, :cond_0

    .line 290
    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/d;->getLevel()I

    move-result v0

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/components/l;I)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 399
    sget-object v0, Lcom/nianticproject/ingress/common/gameentity/h;->a:[I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/af;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 413
    :pswitch_0
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ea;->O:[Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/gameentity/components/l;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    .line 405
    :pswitch_1
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ea;->H:[Lcom/badlogic/gdx/graphics/Color;

    aget-object v0, v0, p2

    goto :goto_0

    .line 409
    :pswitch_2
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Lcom/nianticproject/ingress/shared/af;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 3
    .parameter

    .prologue
    .line 550
    sget-object v0, Lcom/nianticproject/ingress/common/gameentity/h;->a:[I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/af;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 570
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not have an associated details texture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :pswitch_0
    const-string/jumbo v0, "{data:upgrade/data/mod_detailed-RES_SHIELD.png,data-xhdpi:upgrade/data-xhdpi/mod_detailed-RES_SHIELD.png}"

    .line 573
    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/b/c;->a(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    return-object v0

    .line 555
    :pswitch_1
    const-string/jumbo v0, "{data:upgrade/data/mod_detailed-LINK_AMPLIFIER.png,data-xhdpi:upgrade/data-xhdpi/mod_detailed-LINK_AMPLIFIER.png}"

    goto :goto_0

    .line 558
    :pswitch_2
    const-string/jumbo v0, "{data:upgrade/data/mod_detailed-HEAT_SINK.png,data-xhdpi:upgrade/data-xhdpi/mod_detailed-HEAT_SINK.png}"

    goto :goto_0

    .line 561
    :pswitch_3
    const-string/jumbo v0, "{data:upgrade/data/mod_detailed-MULTI_HACK.png,data-xhdpi:upgrade/data-xhdpi/mod_detailed-MULTI_HACK.png}"

    goto :goto_0

    .line 564
    :pswitch_4
    const-string/jumbo v0, "{data:upgrade/data/mod_detailed-FORCE_AMP.png,data-xhdpi:upgrade/data-xhdpi/mod_detailed-FORCE_AMP.png}"

    goto :goto_0

    .line 567
    :pswitch_5
    const-string/jumbo v0, "{data:upgrade/data/mod_detailed-TURRET.png,data-xhdpi:upgrade/data-xhdpi/mod_detailed-TURRET.png}"

    goto :goto_0

    .line 550
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static b()Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            ">;"
        }
    .end annotation

    .prologue
    .line 840
    sget-object v0, Lcom/nianticproject/ingress/shared/af;->b:Lcom/nianticproject/ingress/shared/af;

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->m:Lcom/nianticproject/ingress/shared/af;

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->c:Lcom/nianticproject/ingress/shared/af;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/nianticproject/ingress/shared/af;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 5
    .parameter

    .prologue
    .line 635
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    sget-object v0, Lcom/nianticproject/ingress/common/gameentity/h;->a:[I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/af;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 654
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No resource unit texture for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/af;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :pswitch_0
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->A:Lcom/badlogic/gdx/graphics/Texture;

    .line 652
    :goto_0
    return-object v0

    .line 640
    :pswitch_1
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->j:Lcom/badlogic/gdx/graphics/Texture;

    goto :goto_0

    .line 652
    :pswitch_2
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->G:Lcom/badlogic/gdx/graphics/Texture;

    goto :goto_0

    .line 636
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static c(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/common/gameentity/c;
    .locals 1
    .parameter

    .prologue
    .line 304
    invoke-static {p0}, Lcom/nianticproject/ingress/common/gameentity/g;->i(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/components/Resource;

    move-result-object v0

    .line 305
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v0

    .line 306
    invoke-static {v0, p0}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/common/gameentity/c;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            ">;"
        }
    .end annotation

    .prologue
    .line 850
    sget-object v0, Lcom/nianticproject/ingress/shared/af;->k:Lcom/nianticproject/ingress/shared/af;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/nianticproject/ingress/shared/af;

    const/4 v2, 0x0

    sget-object v3, Lcom/nianticproject/ingress/shared/af;->f:Lcom/nianticproject/ingress/shared/af;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/nianticproject/ingress/shared/af;->d:Lcom/nianticproject/ingress/shared/af;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/nianticproject/ingress/shared/af;->e:Lcom/nianticproject/ingress/shared/af;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/nianticproject/ingress/shared/af;->h:Lcom/nianticproject/ingress/shared/af;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/nianticproject/ingress/shared/af;->l:Lcom/nianticproject/ingress/shared/af;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lcom/nianticproject/ingress/gameentity/f;)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .parameter

    .prologue
    .line 376
    invoke-static {p0}, Lcom/nianticproject/ingress/common/gameentity/g;->i(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/components/Resource;

    move-result-object v0

    .line 377
    invoke-static {p0}, Lcom/nianticproject/ingress/common/gameentity/g;->b(Lcom/nianticproject/ingress/gameentity/f;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/nianticproject/ingress/gameentity/components/Resource;I)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lcom/nianticproject/ingress/gameentity/f;)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .parameter

    .prologue
    .line 427
    invoke-static {p0}, Lcom/nianticproject/ingress/common/gameentity/g;->i(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/components/Resource;

    move-result-object v0

    .line 428
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v0

    .line 430
    sget-object v1, Lcom/nianticproject/ingress/common/gameentity/h;->a:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/af;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 446
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    .line 448
    :goto_0
    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/ea;->b(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0

    .line 432
    :pswitch_0
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/FlipCard;

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/FlipCard;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/FlipCard;->getFlipCardType()Lcom/nianticproject/ingress/gameentity/components/c;

    move-result-object v0

    .line 434
    sget-object v1, Lcom/nianticproject/ingress/common/gameentity/h;->b:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/gameentity/components/c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 442
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    goto :goto_0

    .line 436
    :pswitch_1
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    goto :goto_0

    .line 439
    :pswitch_2
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch

    .line 434
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static f(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/common/c/ba;
    .locals 1
    .parameter

    .prologue
    .line 460
    invoke-static {p0}, Lcom/nianticproject/ingress/common/gameentity/g;->i(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/components/Resource;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/nianticproject/ingress/gameentity/components/Resource;)Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v0

    return-object v0
.end method

.method public static g(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/common/gameentity/e;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 683
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    .line 684
    if-nez v0, :cond_0

    move-object v0, v1

    .line 695
    :goto_0
    return-object v0

    .line 687
    :cond_0
    invoke-static {p0}, Lcom/nianticproject/ingress/common/gameentity/g;->d(Lcom/nianticproject/ingress/gameentity/f;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    .line 689
    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/ek;->a(Lcom/nianticproject/ingress/gameentity/components/Resource;)Lcom/nianticproject/ingress/common/scanner/gd;

    move-result-object v3

    .line 690
    if-nez v3, :cond_1

    move-object v0, v1

    .line 691
    goto :goto_0

    .line 694
    :cond_1
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nianticproject/ingress/common/gameentity/h;->a:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/af;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ea;->d:Lcom/badlogic/gdx/graphics/Color;

    .line 695
    :goto_1
    new-instance v1, Lcom/nianticproject/ingress/common/gameentity/e;

    iget-object v4, v3, Lcom/nianticproject/ingress/common/scanner/gd;->h:Lcom/nianticproject/ingress/common/j/ai;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/scanner/gd;->b:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, v4, v3, v0, v2}, Lcom/nianticproject/ingress/common/gameentity/e;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    move-object v0, v1

    goto :goto_0

    .line 694
    :sswitch_0
    sget-object v0, Lcom/nianticproject/ingress/common/gameentity/g;->f:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    :sswitch_1
    sget-object v0, Lcom/nianticproject/ingress/common/gameentity/g;->g:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public static h(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/common/gameentity/e;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 705
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    .line 706
    if-nez v0, :cond_0

    move-object v0, v1

    .line 716
    :goto_0
    return-object v0

    .line 709
    :cond_0
    invoke-static {p0}, Lcom/nianticproject/ingress/common/gameentity/g;->d(Lcom/nianticproject/ingress/gameentity/f;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    .line 711
    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/ek;->a(Lcom/nianticproject/ingress/gameentity/components/Resource;)Lcom/nianticproject/ingress/common/scanner/gd;

    move-result-object v3

    .line 712
    if-nez v3, :cond_1

    move-object v0, v1

    .line 713
    goto :goto_0

    .line 716
    :cond_1
    new-instance v0, Lcom/nianticproject/ingress/common/gameentity/e;

    iget-object v1, v3, Lcom/nianticproject/ingress/common/scanner/gd;->h:Lcom/nianticproject/ingress/common/j/ai;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/scanner/gd;->b:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v1, v3, v2}, Lcom/nianticproject/ingress/common/gameentity/e;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0
.end method

.method private static i(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/components/Resource;
    .locals 4
    .parameter

    .prologue
    .line 270
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    .line 272
    if-nez v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "not a resource entity: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_0
    return-object v0
.end method
