.class public final Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog;
.super Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog$Style;


# instance fields
.field private final b:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

.field private final d:Lcom/nianticproject/ingress/common/j/av;

.field private e:Lcom/nianticproject/ingress/common/playerprofile/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog$Style;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog$Style;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog;->a:Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog$Style;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Lcom/nianticproject/ingress/common/j/av;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog;->a:Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog$Style;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;-><init>(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;)V

    .line 41
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog;->b:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    .line 42
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/av;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog;->d:Lcom/nianticproject/ingress/common/j/av;

    .line 43
    return-void
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;I)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/x;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog;->b:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog;->d:Lcom/nianticproject/ingress/common/j/av;

    invoke-direct {v0, v1, v2, p1, p3}, Lcom/nianticproject/ingress/common/playerprofile/x;-><init>(Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Lcom/nianticproject/ingress/common/j/av;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog;->e:Lcom/nianticproject/ingress/common/playerprofile/x;

    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog;->e:Lcom/nianticproject/ingress/common/playerprofile/x;

    return-object v0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog;->e:Lcom/nianticproject/ingress/common/playerprofile/x;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog;->e:Lcom/nianticproject/ingress/common/playerprofile/x;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/x;->a()V

    .line 57
    :cond_0
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->dispose()V

    .line 58
    return-void
.end method
