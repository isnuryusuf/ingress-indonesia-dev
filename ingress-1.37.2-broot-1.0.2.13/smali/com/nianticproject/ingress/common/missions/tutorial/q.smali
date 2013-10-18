.class final Lcom/nianticproject/ingress/common/missions/tutorial/q;
.super Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/tutorial/p;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/p;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/q;->a:Lcom/nianticproject/ingress/common/missions/tutorial/p;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    invoke-static {}, Lcom/google/a/c/dc;->h()Lcom/google/a/c/de;

    move-result-object v0

    .line 30
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "This is your scanner map."

    aput-object v2, v1, v3

    invoke-static {p1, p2, v1}, Lcom/nianticproject/ingress/common/missions/tutorial/q;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 31
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Your "

    aput-object v2, v1, v3

    const-string/jumbo v2, "Player Triangle"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, " represents your location in the real world."

    aput-object v3, v1, v2

    invoke-static {p1, p2, v1}, Lcom/nianticproject/ingress/common/missions/tutorial/q;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 34
    invoke-virtual {v0}, Lcom/google/a/c/de;->a()Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "The "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "Active Circle"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " shows when you can interact with objects."

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lcom/nianticproject/ingress/common/missions/tutorial/q;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method
