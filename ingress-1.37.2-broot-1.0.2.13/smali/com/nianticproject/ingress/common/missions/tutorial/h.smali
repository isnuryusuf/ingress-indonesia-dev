.class final Lcom/nianticproject/ingress/common/missions/tutorial/h;
.super Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/tutorial/g;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/g;Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/h;->a:Lcom/nianticproject/ingress/common/missions/tutorial/g;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Ljava/util/List;
    .locals 6
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
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    invoke-static {}, Lcom/google/a/c/dc;->h()Lcom/google/a/c/de;

    move-result-object v0

    .line 41
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Simulated Portal created. You can "

    aput-object v2, v1, v3

    const-string/jumbo v2, "Hack"

    aput-object v2, v1, v4

    const-string/jumbo v2, " Portals to acquire objects."

    aput-object v2, v1, v5

    invoke-static {p1, p2, v1}, Lcom/nianticproject/ingress/common/missions/tutorial/h;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 43
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, ""

    aput-object v2, v1, v3

    const-string/jumbo v2, "Tap Portal to begin."

    aput-object v2, v1, v4

    invoke-static {p1, p2, v1}, Lcom/nianticproject/ingress/common/missions/tutorial/h;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 44
    invoke-virtual {v0}, Lcom/google/a/c/de;->a()Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method
