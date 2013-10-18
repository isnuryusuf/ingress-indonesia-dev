.class public final Lcom/nianticproject/ingress/common/missions/dz;
.super Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;
.source "SourceFile"


# static fields
.field public static a:Lcom/nianticproject/ingress/common/scanner/ev;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/nianticproject/ingress/common/missions/ea;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/missions/ea;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/dz;->a:Lcom/nianticproject/ingress/common/scanner/ev;

    return-void
.end method

.method constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Ljava/util/List;
    .locals 7
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
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    invoke-static {}, Lcom/google/a/c/dc;->h()Lcom/google/a/c/de;

    move-result-object v0

    .line 35
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "This is the "

    aput-object v2, v1, v3

    const-string/jumbo v2, "Scanner"

    aput-object v2, v1, v4

    const-string/jumbo v2, " map view."

    aput-object v2, v1, v5

    invoke-static {p1, p2, v1}, Lcom/nianticproject/ingress/common/missions/dz;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 36
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "The"

    aput-object v2, v1, v3

    const-string/jumbo v2, " triangle"

    aput-object v2, v1, v4

    const-string/jumbo v2, " represents your location in the real world."

    aput-object v2, v1, v5

    invoke-static {p1, p2, v1}, Lcom/nianticproject/ingress/common/missions/dz;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 39
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "You can interact with objects within the "

    aput-object v2, v1, v3

    const-string/jumbo v2, "action circle"

    aput-object v2, v1, v4

    const-string/jumbo v2, "."

    aput-object v2, v1, v5

    invoke-static {p1, p2, v1}, Lcom/nianticproject/ingress/common/missions/dz;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 42
    invoke-virtual {v0}, Lcom/google/a/c/de;->a()Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method
