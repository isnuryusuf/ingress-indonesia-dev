.class public final Lcom/nianticproject/ingress/common/model/a/d;
.super Lcom/nianticproject/ingress/common/model/a/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/model/a/j",
        "<",
        "Lcom/nianticproject/ingress/common/missions/ck;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 17
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/model/a/d;->a:Ljava/util/Set;

    .line 19
    invoke-static {}, Lcom/nianticproject/ingress/common/missions/ck;->values()[Lcom/nianticproject/ingress/common/missions/ck;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 20
    sget-object v4, Lcom/nianticproject/ingress/common/model/a/d;->a:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/missions/ck;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/ck;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/model/a/j;-><init>(Ljava/lang/Object;J)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/model/a/j;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 16
    sget-object v0, Lcom/nianticproject/ingress/common/model/a/d;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/nianticproject/ingress/common/missions/ck;->valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/missions/ck;

    move-result-object v0

    goto :goto_0
.end method
