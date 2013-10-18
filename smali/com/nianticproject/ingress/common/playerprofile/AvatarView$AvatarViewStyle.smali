.class public Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;
.source "SourceFile"


# instance fields
.field private aliensTintColor:Lcom/badlogic/gdx/graphics/Color;

.field private neutralTintColor:Lcom/badlogic/gdx/graphics/Color;

.field private resistanceTintColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;-><init>()V

    .line 334
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;->neutralTintColor:Lcom/badlogic/gdx/graphics/Color;

    .line 335
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->GREEN:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;->aliensTintColor:Lcom/badlogic/gdx/graphics/Color;

    .line 336
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLUE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;->resistanceTintColor:Lcom/badlogic/gdx/graphics/Color;

    .line 339
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;)V
    .locals 1
    .parameter

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    .line 334
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;->neutralTintColor:Lcom/badlogic/gdx/graphics/Color;

    .line 335
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->GREEN:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;->aliensTintColor:Lcom/badlogic/gdx/graphics/Color;

    .line 336
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLUE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;->resistanceTintColor:Lcom/badlogic/gdx/graphics/Color;

    .line 344
    iget-object v0, p1, Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;->neutralTintColor:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;->neutralTintColor:Lcom/badlogic/gdx/graphics/Color;

    .line 345
    iget-object v0, p1, Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;->aliensTintColor:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;->aliensTintColor:Lcom/badlogic/gdx/graphics/Color;

    .line 346
    iget-object v0, p1, Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;->resistanceTintColor:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;->resistanceTintColor:Lcom/badlogic/gdx/graphics/Color;

    .line 347
    return-void
.end method


# virtual methods
.method public getTintColor(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .parameter

    .prologue
    .line 350
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/w;->a:[I

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/ai;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 352
    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;->aliensTintColor:Lcom/badlogic/gdx/graphics/Color;

    .line 356
    :goto_0
    return-object v0

    .line 354
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;->neutralTintColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    .line 356
    :pswitch_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/AvatarView$AvatarViewStyle;->resistanceTintColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    .line 350
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
