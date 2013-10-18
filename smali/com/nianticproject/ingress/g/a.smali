.class public final Lcom/nianticproject/ingress/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/g/d;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Lcom/google/h/a/a/e;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/NemesisApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".USER_INITIATED_FEEDBACK_REPORT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/g/a;->a:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "logToServer."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/nianticproject/ingress/shared/ag;->a:Lcom/nianticproject/ingress/shared/ah;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/g/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/google/h/a/a/e;

    sget-object v1, Lcom/nianticproject/ingress/g/a;->a:Ljava/lang/String;

    sget-object v2, Lcom/nianticproject/ingress/g/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/h/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/g/a;->c:Lcom/google/h/a/a/e;

    .line 56
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 85
    iget-wide v2, p0, Lcom/nianticproject/ingress/g/a;->d:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 86
    iput-wide v0, p0, Lcom/nianticproject/ingress/g/a;->d:J

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nianticproject/ingress/shared/ag;->a:Lcom/nianticproject/ingress/shared/ah;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/nianticproject/ingress/g/c;

    iget-object v2, p0, Lcom/nianticproject/ingress/g/a;->c:Lcom/google/h/a/a/e;

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/g/c;-><init>(Lcom/google/h/a/a/e;)V

    .line 92
    new-instance v2, Lcom/google/h/a/a/c;

    invoke-direct {v2}, Lcom/google/h/a/a/c;-><init>()V

    .line 93
    invoke-virtual {v1, v2, v0, p3}, Lcom/nianticproject/ingress/g/c;->a(Lcom/google/h/a/a/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Lcom/google/h/a/a/c;)I

    .line 96
    return-void
.end method

.method public final a(Ljava/util/logging/Level;)Z
    .locals 4
    .parameter

    .prologue
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 68
    iget-wide v2, p0, Lcom/nianticproject/ingress/g/a;->d:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    .line 72
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
