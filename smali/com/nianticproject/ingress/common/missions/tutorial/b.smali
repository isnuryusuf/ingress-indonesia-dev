.class final Lcom/nianticproject/ingress/common/missions/tutorial/b;
.super Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/tutorial/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/a;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/b;->a:Lcom/nianticproject/ingress/common/missions/tutorial/a;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Ljava/util/List;
    .locals 4
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
    .line 33
    invoke-static {}, Lcom/google/a/c/dc;->h()Lcom/google/a/c/de;

    move-result-object v0

    .line 34
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "To fire, "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "press on map for menu then slide to select FIRE XMP."

    aput-object v3, v1, v2

    invoke-static {p1, p2, v1}, Lcom/nianticproject/ingress/common/missions/tutorial/b;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 36
    invoke-virtual {v0}, Lcom/google/a/c/de;->a()Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method
