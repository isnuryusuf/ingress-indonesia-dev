.class public final Lcom/nianticproject/ingress/common/missions/cd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/missions/ce;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/nianticproject/ingress/common/ui/widget/z;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/cd;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Lcom/google/a/c/hc;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/cd;->a:Ljava/util/Map;

    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/cd;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/missions/cd;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 90
    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/cd;->b:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Lcom/nianticproject/ingress/common/missions/cd;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/cd;->c:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/nianticproject/ingress/common/missions/cd;->d:Lcom/nianticproject/ingress/common/ui/widget/z;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/cd;->d:Lcom/nianticproject/ingress/common/ui/widget/z;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/z;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Lcom/google/a/c/hc;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/cd;->a:Ljava/util/Map;

    .line 80
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/cd;->b:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/cd;->c:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/cd;->d:Lcom/nianticproject/ingress/common/ui/widget/z;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/cd;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/cd;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/missions/cd;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/cd;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/missions/cd;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/cd;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/missions/cd;)Lcom/nianticproject/ingress/common/ui/widget/z;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/cd;->d:Lcom/nianticproject/ingress/common/ui/widget/z;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/missions/ck;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/cd;->a:Ljava/util/Map;

    new-instance v1, Lcom/nianticproject/ingress/common/missions/ce;

    invoke-direct {v1, p2, p3, p4}, Lcom/nianticproject/ingress/common/missions/ce;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/missions/ck;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 105
    instance-of v1, p1, Lcom/nianticproject/ingress/common/missions/cd;

    if-eqz v1, :cond_0

    .line 106
    check-cast p1, Lcom/nianticproject/ingress/common/missions/cd;

    .line 107
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/cd;->a:Ljava/util/Map;

    iget-object v2, p1, Lcom/nianticproject/ingress/common/missions/cd;->a:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/cd;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/nianticproject/ingress/common/missions/cd;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/cd;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/nianticproject/ingress/common/missions/cd;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 111
    :cond_0
    return v0
.end method
