.class public final Lcom/nianticproject/ingress/k/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/s/e;


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/w/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "nemesis"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_PREFS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/k/a;->a:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/nianticproject/ingress/k/a;->c:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/s/c;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/k/a;->b:Lcom/nianticproject/ingress/common/w/aa;

    .line 47
    :try_start_0
    const-string/jumbo v0, "AndroidNemesisPreferencesBackend.AndroidNemesisPreferencesBackend"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/nianticproject/ingress/k/b;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/k/b;-><init>(Lcom/nianticproject/ingress/k/a;Landroid/content/Context;)V

    .line 60
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v1, Lcom/nianticproject/ingress/k/a;->c:Ljava/util/concurrent/FutureTask;

    .line 61
    new-instance v0, Lcom/nianticproject/ingress/k/c;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/k/c;-><init>(Lcom/nianticproject/ingress/k/a;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/k/c;->e()Lcom/nianticproject/ingress/common/f/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/nianticproject/ingress/k/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Ljava/util/concurrent/FutureTask;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/nianticproject/ingress/k/a;->c:Ljava/util/concurrent/FutureTask;

    return-object v0
.end method

.method private d()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 81
    sget-object v0, Lcom/nianticproject/ingress/k/a;->c:Ljava/util/concurrent/FutureTask;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :try_start_0
    sget-object v0, Lcom/nianticproject/ingress/k/a;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 92
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    iget-object v1, p0, Lcom/nianticproject/ingress/k/a;->b:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Get task interrupted."

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 92
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "An error occured while loading preferences"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 89
    :catch_2
    move-exception v0

    .line 90
    iget-object v1, p0, Lcom/nianticproject/ingress/k/a;->b:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Get task cancelled."

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/s/f;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/nianticproject/ingress/common/s/f;

    invoke-direct {p0}, Lcom/nianticproject/ingress/k/a;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/s/f;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/s/b;)V
    .locals 6
    .parameter

    .prologue
    .line 98
    :try_start_0
    const-string/jumbo v0, "AndroidNemesisPreferencesBackend.bulkCommit"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/s/b;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 103
    invoke-direct {p0}, Lcom/nianticproject/ingress/k/a;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 104
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 107
    if-nez v0, :cond_0

    .line 108
    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 109
    :cond_0
    :try_start_1
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 110
    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 111
    :cond_1
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 112
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 113
    :cond_2
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 114
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 115
    :cond_3
    instance-of v4, v0, Ljava/lang/Float;

    if-eqz v4, :cond_4

    .line 116
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 117
    :cond_4
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_5

    .line 118
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 120
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Don\'t know how to commit class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_6
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 129
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 139
    const-string/jumbo v0, "AndroidNemesisPreferencesBackend.remove"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/nianticproject/ingress/k/a;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 142
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 165
    const-string/jumbo v0, "AndroidNemesisPreferencesBackend.putInt"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/nianticproject/ingress/k/a;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 167
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 168
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 158
    const-string/jumbo v0, "AndroidNemesisPreferencesBackend.putLong"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/nianticproject/ingress/k/a;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 161
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 151
    const-string/jumbo v0, "AndroidNemesisPreferencesBackend.putString"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/nianticproject/ingress/k/a;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 154
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 179
    const-string/jumbo v0, "AndroidNemesisPreferencesBackend.putBoolean"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/nianticproject/ingress/k/a;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 182
    return-void
.end method

.method public final b(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/nianticproject/ingress/k/a;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/nianticproject/ingress/k/a;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/nianticproject/ingress/k/a;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/nianticproject/ingress/k/a;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/nianticproject/ingress/k/a;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
