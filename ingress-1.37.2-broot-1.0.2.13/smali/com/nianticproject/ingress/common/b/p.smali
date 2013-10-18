.class public final Lcom/nianticproject/ingress/common/b/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/b/a;


# instance fields
.field public final a:Lcom/nianticproject/ingress/common/b/q;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/badlogic/gdx/utils/Json;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/b/q;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/nianticproject/ingress/common/b/p;->b:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/nianticproject/ingress/common/b/p;->a:Lcom/nianticproject/ingress/common/b/q;

    .line 60
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/b/p;->c:Lcom/badlogic/gdx/utils/Json;

    .line 61
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 7
    .parameter

    .prologue
    invoke-static {p1}, La;->y(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    const-string/jumbo v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nianticproject/ingress/common/b/p;->c:Lcom/badlogic/gdx/utils/Json;

    const-class v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/b/p;->a:Lcom/nianticproject/ingress/common/b/q;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/b/q;->a(Lcom/nianticproject/ingress/common/b/q;)I

    move-result v1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "data-"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nianticproject/ingress/common/b/q;->values()[Lcom/nianticproject/ingress/common/b/q;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/b/q;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    :goto_1
    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 90
    :goto_2
    if-nez v0, :cond_5

    .line 91
    new-instance v0, Lcom/nianticproject/ingress/common/b/b;

    const-string/jumbo v1, "getAssetPath failed for path=%s density=%s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v4

    iget-object v3, p0, Lcom/nianticproject/ingress/common/b/p;->a:Lcom/nianticproject/ingress/common/b/q;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/b/p;->b:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/b/p;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 94
    :cond_5
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 96
    new-instance v1, Lcom/nianticproject/ingress/common/b/b;

    const-string/jumbo v2, "path=%s density=%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/nianticproject/ingress/common/b/p;->a:Lcom/nianticproject/ingress/common/b/q;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nianticproject/ingress/common/b/b;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_6
    return-object v1
.end method
