.class final Lcom/nianticproject/ingress/common/playerprofile/aj;
.super Lcom/nianticproject/ingress/common/ui/widget/f;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/playerprofile/ai;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/playerprofile/ai;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/playerprofile/ai;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "profiles-stats-filter-tab"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-direct {p0, v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    .line 69
    iput-object p2, p0, Lcom/nianticproject/ingress/common/playerprofile/aj;->a:Lcom/nianticproject/ingress/common/playerprofile/ai;

    .line 70
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/playerprofile/ai;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/aj;->a:Lcom/nianticproject/ingress/common/playerprofile/ai;

    return-object v0
.end method
