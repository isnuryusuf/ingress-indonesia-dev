.class public final Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/gameentity/b;


# instance fields
.field private b:Z

.field private final c:Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/nianticproject/ingress/gameentity/b;

    invoke-direct {v0}, Lcom/nianticproject/ingress/gameentity/b;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a:Lcom/nianticproject/ingress/gameentity/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;-><init>(Ljava/lang/String;J)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;

    invoke-static {}, Lcom/google/a/c/id;->b()Lcom/google/a/c/id;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;-><init>(Ljava/lang/String;JLcom/google/a/c/ar;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->c:Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->b:Z

    .line 48
    return-void
.end method

.method static synthetic b()Lcom/nianticproject/ingress/gameentity/b;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a:Lcom/nianticproject/ingress/gameentity/b;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "An instance of the entity has already been built"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 132
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->c()V

    .line 91
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->c:Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;

    #calls: Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->addInternal(Lcom/nianticproject/ingress/gameentity/a;)V
    invoke-static {v0, p1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->access$100(Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;Lcom/nianticproject/ingress/gameentity/a;)V

    .line 93
    return-object p0
.end method

.method public final a()Lcom/nianticproject/ingress/gameentity/PersistentGameEntity;
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->c()V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->b:Z

    .line 127
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->c:Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;

    return-object v0
.end method
