.class public final enum Lcom/nianticproject/ingress/o/a/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/o/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/o/a/b;

.field public static final enum b:Lcom/nianticproject/ingress/o/a/b;

.field private static final synthetic f:[Lcom/nianticproject/ingress/o/a/b;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    new-instance v0, Lcom/nianticproject/ingress/o/a/b;

    const-string/jumbo v1, "WANT_FPS"

    const-string/jumbo v2, "debug.nemesis.fps"

    const-string/jumbo v3, "false"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/nianticproject/ingress/o/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/o/a/b;->a:Lcom/nianticproject/ingress/o/a/b;

    .line 33
    new-instance v0, Lcom/nianticproject/ingress/o/a/b;

    const-string/jumbo v1, "PROD_URL"

    const-string/jumbo v2, "debug.nemesis.url"

    const-string/jumbo v3, "https://m-dot-betaspike.appspot.com"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/nianticproject/ingress/o/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/o/a/b;->b:Lcom/nianticproject/ingress/o/a/b;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nianticproject/ingress/o/a/b;

    sget-object v1, Lcom/nianticproject/ingress/o/a/b;->a:Lcom/nianticproject/ingress/o/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/o/a/b;->b:Lcom/nianticproject/ingress/o/a/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nianticproject/ingress/o/a/b;->f:[Lcom/nianticproject/ingress/o/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/o/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;B)V

    .line 69
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZBB)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput-object p3, p0, Lcom/nianticproject/ingress/o/a/b;->c:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lcom/nianticproject/ingress/o/a/b;->d:Ljava/lang/String;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/o/a/b;->e:Z

    .line 83
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/o/a/b;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/nianticproject/ingress/o/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/o/a/b;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/o/a/b;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/nianticproject/ingress/o/a/b;->f:[Lcom/nianticproject/ingress/o/a/b;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/o/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/o/a/b;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/nianticproject/ingress/o/a/b;->e:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/o/a/b;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/nianticproject/ingress/o/a/b;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/o/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/o/a/b;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 60
    const-string/jumbo v0, "TRUE"

    invoke-virtual {p0}, Lcom/nianticproject/ingress/o/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
